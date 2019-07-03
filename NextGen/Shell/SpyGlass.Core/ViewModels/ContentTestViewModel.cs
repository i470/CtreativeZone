using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using Common.Types;
using CPS;
using GUIEvents;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Events;

namespace SpyGlass.Core.ViewModels
{
    public class ContentTestViewModel:BindableBase
    {
        private IEventAggregator _ea;

        public DelegateCommand ChangeShiftStateCommand { get; }
        public DelegateCommand ChangeTransportStateCommand { get; }
        public DelegateCommand ChangeFeedScanMotorStateCommand { get; }
        public DelegateCommand ChangeShredderMotorStateCommand { get; }
        public DelegateCommand ChangeOutputMotorStateCommand { get; }
        public DelegateCommand ChangeSinglerStateCommand { get; }
        public DelegateCommand ChangeVacuumStateCommand { get; }
        public DelegateCommand ChangeFeedValveStateCommand { get; }
        public DelegateCommand ManifoldBlowerStateCommand { get; }
        public DelegateCommand AirValveStateCommand { get; }
        public DelegateCommand PaddleMotorCommand { get; }



        public ContentTestViewModel(IEventAggregator ea)
        {
            ShiftState = false;
            TransportState = false;
            SinglerState = false;
            FeedScanMotorState = false;
            ShredderMotorState = false;
            OutputMotorState = false;

            VacuumState = false;
            FeedValveState = false;
            ManifoldBlowerState = false;
            AirValveState = false;
            PaddleMotorState = false;

            _ea = ea;
            _ea.GetEvent<SentinelSentEvent>().Subscribe(HandleEventFromSentinel);
            _ea.GetEvent<GuiSentEvent>().Subscribe(PublishGuiPayload);

            SenderEvents = new ObservableCollection<string>();
            ReceiverEvents = new ObservableCollection<string>();

            ChangeShiftStateCommand = new DelegateCommand(ChangeShiftState,CanChangeShiftState);
            ChangeTransportStateCommand= new DelegateCommand(ChangeTransportState,CanChangeTransportState);
            ChangeFeedScanMotorStateCommand=new DelegateCommand(ChangeFeedScanMotorState, CanChangeFeedScanMotorState);
            ChangeShredderMotorStateCommand=new DelegateCommand(ChangeShredderMotorState, CanChangeShredderMotorState);
            ChangeOutputMotorStateCommand=new DelegateCommand(ChangeOutputMotorState, CanChangeOutputMotorState);
            ChangeSinglerStateCommand=new DelegateCommand(ChangeSinglerState, CanChangeSinglerState);
            ChangeVacuumStateCommand=new DelegateCommand(ChangeVacuumState, CanChangeVacuumState);
            ChangeFeedValveStateCommand = new DelegateCommand(ChangeFeedValveState, CanChangeFeedValveState);
            ManifoldBlowerStateCommand=new DelegateCommand(ChangeManifoldBlowerState, CanChangeManifoldBlowerState);
            AirValveStateCommand=new DelegateCommand(ChangeAirValveStateCommand, CanChangeAirValveState);
            PaddleMotorCommand=new DelegateCommand(ChangePaddleMotorState, CanChangePaddleMotorState);
        }

        private void PublishGuiPayload(string p)
        {
            ReceiverEvents.Insert(0,"r:"+p);
        }

        private void HandleEventFromSentinel(SentinelEventPayload payload)
        {
           
            SenderEvents.Insert(0,"s:"+payload.ToString());
        }

        private bool CanChangePaddleMotorState()
        {
            return true;
        }

        private void ChangePaddleMotorState()
        {
            BroadcastSinglerButtonState(SinglerDiagnosticsButton.PaddleMotor, PaddleMotorState);
        }

        private bool CanChangeAirValveState()
        {
            return true;
        }

        private void ChangeAirValveStateCommand()
        {
            BroadcastSinglerButtonState(SinglerDiagnosticsButton.BottomAirValve, AirValveState);
        }

        private bool CanChangeManifoldBlowerState()
        {
            return true;
        }

        private void ChangeManifoldBlowerState()
        {
            BroadcastSinglerButtonState(SinglerDiagnosticsButton.Blower, ManifoldBlowerState);
        }

        private bool CanChangeFeedValveState()
        {
            return true;
        }

        private void ChangeFeedValveState()
        {
            BroadcastSinglerButtonState(SinglerDiagnosticsButton.FeedValve, FeedValveState);
        }

        private bool CanChangeVacuumState()
        {
            return true;
        }

        private void ChangeVacuumState()
        {
            BroadcastSinglerButtonState(SinglerDiagnosticsButton.Vacuum, VacuumState);
        }

        private bool CanChangeSinglerState()
        {
            return true;
        }

        private void ChangeSinglerState()
        {
            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Singler);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
            _ea.GetEvent<GuiSentEvent>().Publish($"OHSpyglassEvents.BroadcastSingler.MainButton.Singler");
        }

        private void BroadcastSinglerButtonState(SinglerDiagnosticsButton button, bool IsOn)
        {
            var args = new ControlImageArgs<SinglerDiagnosticsButton>(PageName.DiagnosticsSingler, button,
                IsOn ? ControlImage.On : ControlImage.Off);
            OHSpyglassEvents.EventSetButtonImage.Broadcast(args);
            _ea.GetEvent<GuiSentEvent>().Publish($"OHSpyglassEvents.BroadcastSingler.EventSetButtonImage, {button.ToString()},{IsOn}");
        }

        private bool CanChangeOutputMotorState()
        {
            return true;
        }

        private void ChangeOutputMotorState()
        {
            SetMotorOnOff(TransportDiagnosticsButton.MotorOutput, OutputMotorState ? ControlImage.On : ControlImage.Off);
        }

        private bool CanChangeShredderMotorState()
        {
            return true;
        }

        private void ChangeShredderMotorState()
        {
            SetMotorOnOff(TransportDiagnosticsButton.MotorShredder, ShredderMotorState ? ControlImage.On : ControlImage.Off);

        }

        private bool CanChangeFeedScanMotorState()
        {
            return true;
        }

        private void ChangeFeedScanMotorState()
        {

            SetMotorOnOff(TransportDiagnosticsButton.MotorFeedScan, FeedScanMotorState ? ControlImage.On : ControlImage.Off);
        }

        private void SetMotorOnOff(TransportDiagnosticsButton button, ControlImage state)
        {
            ControlImageArgs<TransportDiagnosticsButton> args =
                new ControlImageArgs<TransportDiagnosticsButton>(PageName.DiagnosticsTransport, button, state);

            OHSpyglassEvents.EventSetButtonImage.Broadcast(args);
            _ea.GetEvent<GuiSentEvent>().Publish($"OHSpyglassEvents.PageName.DiagnosticsTransport, {button.ToString()},{state}");
        }

        private bool CanChangeTransportState()
        {
            return true;
        }

        private void ChangeTransportState()
        {
            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.DiagnosticsTransport);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
            _ea.GetEvent<GuiSentEvent>().Publish("OHSpyglassEvents.PageName.Main, MainButton.DiagnosticsTransport");

            ControlNameArgs<TransportDiagnosticsButton> arg2s = new ControlNameArgs<TransportDiagnosticsButton>(
                PageName.DiagnosticsTransport, TransportDiagnosticsButton.EnableMotors);
            OHSpyglassEvents.EventButtonSelected.Broadcast(arg2s);
            _ea.GetEvent<GuiSentEvent>().Publish("OHSpyglassEvents.PageName.DiagnosticsTransport, TransportDiagnosticsButton.EnableMotors");
        }

        private bool CanChangeShiftState()
        {
            return true;
        }

        private void ChangeShiftState()
        {
         
            var args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Shift);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);

            _ea.GetEvent<GuiSentEvent>().Publish("OHSpyglassEvents.EventButtonSelected.PageName.Main.MainButton.Shift");
        }

        #region PROPERTIES

        private ObservableCollection<string> _senderEvents;
        public ObservableCollection<string> SenderEvents
        {
            get => _senderEvents;
            set => SetProperty(ref _senderEvents, value);
        }

        private ObservableCollection<string> _receiverEvents;
        public ObservableCollection<string> ReceiverEvents
        {
            get => _receiverEvents;
            set => SetProperty(ref _receiverEvents, value);
        }

        private bool _shiftState;
        public bool ShiftState
        {
            get => _shiftState;
            set => SetProperty(ref _shiftState, value);
        }

        private bool _transportState;
        public bool TransportState
        {
            get => _transportState;
            set => SetProperty(ref _transportState, value);
        }

        private bool _feedScanMotorState;
        public bool FeedScanMotorState
        {
            get => _feedScanMotorState;
            set => SetProperty(ref _feedScanMotorState, value);
        }


        private bool _shredderMotorState;
        public bool ShredderMotorState
        {
            get => _shredderMotorState;
            set => SetProperty(ref _shredderMotorState, value);
        }

        private bool _outputMotorState;
        public bool OutputMotorState
        {
            get => _outputMotorState;
            set => SetProperty(ref _outputMotorState, value);
        }

        private bool _singlerState;
        public bool SinglerState
        {
            get => _singlerState;
            set => SetProperty(ref _singlerState, value);
        }

        private bool _vacuumState;
        public bool VacuumState
        {
            get => _vacuumState;
            set => SetProperty(ref _vacuumState, value);
        }

        private bool _feedValveState;
        public bool FeedValveState
        {
            get => _feedValveState;
            set => SetProperty(ref _feedValveState, value);
        }
        private bool _manifoldBlowerState;
        public bool ManifoldBlowerState
        {
            get => _manifoldBlowerState;
            set => SetProperty(ref _manifoldBlowerState, value);
        }
        private bool _airValveState;
        public bool AirValveState
        {
            get => _airValveState;
            set => SetProperty(ref _airValveState, value);
        }
        private bool _paddleMotorState;
        public bool PaddleMotorState
        {
            get => _paddleMotorState;
            set => SetProperty(ref _paddleMotorState, value);
        } 
        #endregion
    }
}
