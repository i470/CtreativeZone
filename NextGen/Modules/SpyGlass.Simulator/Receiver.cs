using System;
using System.Linq;
using System.Threading;
using System.Windows;
using Common.GUIEvents;
using Common.Types;
using CPS;
using CPS.Communications.TCP;
using CPS.Events;
using GUIEvents;
using Prism.Events;
using SpyGlass.Events;
using SpyGlass.Framework.Events;
using SpyGlass.Messages;

namespace SpyGlass.Simulator
{

    public class Receiver : EventReceiverBase

    {
        private IEventAggregator _ea;
        private SynchronizationContext _guiSynchContext;
        public EventsManager events => EventsManager.instance;

        public Receiver(string ipAddress, int port, IEventAggregator ea)
            : base(ipAddress, port)
        {
            _ea = ea;

            OHSystemEvents.EventPageChange.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetButtonState.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetButtonText.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetTextBoxText.Subscribe(HandleEvent);
            OHSpyglassEvents.EventGetTextBoxText.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetTextBoxState.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetButtonImage.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetImagePosition.Subscribe(HandleEvent);
            OHSpyglassEvents.EventSetImageImage.Subscribe(HandleEvent);
            OHSpyglassEvents.EventDisplayOperationSets.Subscribe(HandleEvent);
            OHSpyglassEvents.EventShiftsForSelection.Subscribe(HandleEvent);
            OHSpyglassEvents.EventDisplaySupervisorLogin.Subscribe(HandleEvent);
            UMCSpyglassEvents.EventDisplayMessage.Subscribe(HandleEvent);
            UMCSpyglassEvents.EventDisplayMessage.Subscribe(HandleDisplayMessageEvent);
            DiagnosticsSpyglassEvents.EventSpyglassDiagnosticsInterlocks.Subscribe(HandleEvent);

            LoggingSpyglassEvents.AvailableLogDateEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.AvailableLogDateFirstEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.AvailableLogDateFirstEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.ClearAvailableDatesEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.ClearLogItemsEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.ClearSnapshotBarEvent.Subscribe(HandleEvent); 
            LoggingSpyglassEvents.DisplayLogItemEvent.Subscribe(HandleEvent);
            LoggingSpyglassEvents.SnapshotBarSectionEvent.Subscribe(HandleEvent); 
            LoggingSpyglassEvents.SnapshotBarSplitLineEvent.Subscribe(HandleEvent); 
            LoggingSpyglassEvents.SnapshotBarTimesEvent.Subscribe(HandleEvent); 
            LoggingSpyglassEvents.UserNameEvent.Subscribe(HandleEvent);
            JamPageSpyglassEvents.EventSetJamPockets.Subscribe(HandleEvent);
            JamPageSpyglassEvents.EventRecentNoteData.Subscribe(HandleEvent);
            JamPageSpyglassEvents.EventDisplaySupervisorRecovery.Subscribe(HandleEvent);
            JamPageSpyglassEvents.EventDisplayRemovalCounts.Subscribe(HandleEvent);

            _guiSynchContext = SynchronizationContext.Current;
            events.OfType<SpyGlass.ViewModels.Message>().listener += HandleSendMessageEvent;
            StartEventReceiver();
        }

        private void HandleSendMessageEvent(SpyGlass.ViewModels.Message vmessage)
        {
            Message message = new Message();
            message.Text = vmessage.Text;
            message.ReceivedOn = DateTime.Now;
            message.Source = vmessage.UserActionText;
            message.Signature = vmessage.MessageType.ToString();
            _ea.GetEvent<MessageSentEvent>().Publish(message);
        }

        private void HandleDisplayMessageEvent(object sender, AbstractComponentEventArgs e)
        {
            if (e is UMCSpyglassDisplayMessageEventArgs)
            {
                MessageData m = ((UMCSpyglassDisplayMessageEventArgs)e)._MessageData;
                DisplayMessage(m);
                Message message = new Message(m._MessageText)
                {
                    ReceivedOn = DateTime.Now
                };
                _ea.GetEvent<MessageSentEvent>().Publish(message);
            }
           
        }


        public void DisplayMessage(MessageData message)
        {
            if (message._SeverityLevel == LoggingSeverityLevel.Interaction)
            {
               // InteractionDialog dlg = new InteractionDialog();
                //dlg.SetMessageData(message);
                //DialogResult dr = dlg.ShowDialog();
                //var buttonSelected = dr == DialogResult.OK || dr == DialogResult.Yes ?
                //    UMCDialogButtonSelected.Affirmative : UMCDialogButtonSelected.Negative;
                //var response = new UMCSpyglassDialogResponseEventArgs(buttonSelected, dlg.ResponseText);
                //UMCSpyglassEvents.EventDialogResponse.Broadcast(response);
            }
            else if (message._SeverityLevel == LoggingSeverityLevel.Notification)
            {
                //    NotificationData notification = new NotificationData(message._MessageText);
                //    _notifications.Add(notification);
                //    if (NotificationsPage.Visible)
                //    {
                //        UMCSpyglassEvents.EventNotificationClosed.Broadcast(); // Let User Messages component continue
                //        NotificationsPage.AddNotification(notification);
                //    }
                //    else
                //    {
                //        notificationControl.NotificationData = notification;
                //        notificationControl.Visible = true;
                //        notificationControl.BringToFront();
                //    }
            }
        }

        protected override void ProcessIncomingMessage(byte[] response)
        {
            var x = response;
            _guiSynchContext.Post(ProcessIncomingMessageOnGuiThread, response);

            Message message = new Message();
            message.ReceivedOn = DateTime.Now;
            message.Text = "ProcessIncomingMessageOnGuiThread";
            _ea.GetEvent<MessageSentEvent>().Publish(message);
        }

        

        private void HandleEvent(object sender, AbstractComponentEventArgs e)
        {

           _ea.GetEvent<SentinelSentEvent>().Publish(new SentinelEventPayload(sender,e));

        }

        

        private void ProcessIncomingMessageOnGuiThread(object data)
        {
            var x = data;
            try
            {
                byte[] buf = data as byte[];
                var ev = EventDictionary.Instance.GetComponentEvent((EventGroup) buf[EVENT_TYPE_BYTE],
                    buf[EVENT_ID_BYTE]);
                // Remove 2 first bytes
                byte[] argsOnly = buf.Skip(2).Take(buf.Length - 2).ToArray();
                ev.DeserializeAndBroadcast(argsOnly);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception");
            }
        }
    }


  
}

