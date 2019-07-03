using Common.Communications;
using Common.GUIEvents;
using GUIEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpyGlass.Simulator
{
    public class Sender : GUISender
    {
        public Sender(string IPAddress, int Port) : base(IPAddress, Port) { }

        protected override void SubscribeToEvents()
        {
            // SpyGlass to TransportDiagnostics Events
            EventSubscriber(OHSpyglassEvents.EventImageSelected, HandleEventToSend);

            // SpyGlass to Operation Hub Events
            EventSubscriber(OHSpyglassEvents.EventButtonSelected, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventGetTextBoxTextReply, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventSortModeSelected, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventOperationSetSelected, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventRBDMDeleteShift, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventSelectedShift, HandleEventToSend);
            EventSubscriber(OHSpyglassEvents.EventSupervisorLoginResponse, HandleEventToSend);

            // SpyGlass to UserMessages Events
            EventSubscriber(UMCSpyglassEvents.EventDialogResponse, HandleEventToSend);
            EventSubscriber(UMCSpyglassEvents.EventPause, HandleEventToSend);
            EventSubscriber(UMCSpyglassEvents.EventResume, HandleEventToSend);
            EventSubscriber(UMCSpyglassEvents.EventNotificationClosed, HandleEventToSend);

            // SpyGlass to Logging Component
            EventSubscriber(LoggingSpyglassEvents.DateSelectedEvent, HandleEventToSend);
            EventSubscriber(LoggingSpyglassEvents.UserSelectedEvent, HandleEventToSend);

            // SpyGlass to Jam Page Component
            EventSubscriber(JamPageSpyglassEvents.EventSupervisorRecoveryComplete, HandleEventToSend);
        }
    }
}
