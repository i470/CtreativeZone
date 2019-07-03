using Common.Types;
using CPS;
using GUIEvents;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Events;
using SpyGlass.Messages;

namespace SpyGlass.Core.ViewModels
{
    public class ShiftViewModel:BindableBase
    {

        private IEventAggregator _ea;
        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        public DelegateCommand ChangeShiftStateCommand { get; }
        public DelegateCommand<object> TriggerTransportCommand { get; }
        public DelegateCommand<object> TriggerSinglerCommand { get; }

        public ShiftViewModel(IEventAggregator ea)
        {
            _ea = ea;
            _ea.GetEvent<SentinelSentEvent>().Subscribe(HandleEventFromSentinel);
            _ea.GetEvent<GuiSentEvent>().Subscribe(PublishGuiPayload);
            _ea.GetEvent<ApplicationCloseEvent>().Subscribe(CloseShift);

            ShiftState = false;
            ChangeShiftStateCommand = new DelegateCommand(ChangeShiftState, CanChangeShiftState);
            TriggerTransportCommand=new DelegateCommand<object>(TriggerTransportExecute, CanTriggerTransport);
            TriggerSinglerCommand = new DelegateCommand<object>(TriggerSinglerExecute, CanTriggerSingler);

        }

        private bool CanTriggerSingler(object state)
        {
            return true;
        }

        private void TriggerSinglerExecute(object state)
        {
            var isOn = (bool) state;
        }

        private bool CanTriggerTransport(object state)
        {
            return true;
        }

        private void TriggerTransportExecute(object state)
        {
            var isOn = (bool)state;

        }

        private void CloseShift()
        {
            ShiftState = false;
            var args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Shift);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
            _ea.GetEvent<MessageSentEvent>().Publish(new InfoMessage($"Shift closed"));
            _ea.GetEvent<GuiSentEvent>().Publish("END: OHSpyglassEvents.EventButtonSelected.PageName.Main.MainButton.Shift-END");
        }

        private bool CanChangeShiftState()
        {
            return true;
        }

        private void ChangeShiftState()
        {

            if (ShiftState)
            {
                CloseShift();
            }
            else
            {
                ShiftState = true;
                Logger.Info("Changing Shift State and Broadcasting   OHSpyglassEvents.EventButtonSelected.Broadcast(args);");
                Logger.Info($"args: {PageName.Main},{MainButton.Shift} ");
                _ea.GetEvent<MessageSentEvent>().Publish(new InfoMessage($"Shift started"));
                var args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Shift);
                OHSpyglassEvents.EventButtonSelected.Broadcast(args);

                _ea.GetEvent<GuiSentEvent>().Publish("START: OHSpyglassEvents.EventButtonSelected.PageName.Main.MainButton.Shift-START");
            }

           
        }

        private void PublishGuiPayload(string obj)
        {
           //
        }

        private void HandleEventFromSentinel(SentinelEventPayload obj)
        {
            //
        }

        private int _totalShiftNoteCount;
        public int TotalShiftNoteCount
        {
            get => _totalShiftNoteCount;
            set => SetProperty(ref _totalShiftNoteCount, value);
        }

        private bool _shiftState;
        public bool ShiftState
        {
            get => _shiftState;
            set => SetProperty(ref _shiftState, value);
        }

    }
}
