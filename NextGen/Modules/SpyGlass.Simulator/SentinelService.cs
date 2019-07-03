
using CPS;
using Prism.Events;
using SpyGlass.Events;
using SpyGlass.Framework.Model;
using SpyGlass.Messages;
using System;
using System.Threading.Tasks;

namespace SpyGlass.Simulator
{


    public class SentinelService : ISentinelService
    {
        private IEventAggregator _ea;
        public EventsManager events => EventsManager.instance;

        private Receiver SentinelReceiver;
        private Sender _SentinelSender;

        public SentinelService(IEventAggregator ea)
        {
            _ea = ea;
        }

        public void ReceiveMessage(IMessage message)
        {
            var msg = message;
        }

        public  void StartBrodcasting()
        {
            SentinelReceiver = new Receiver(Constants.IP_ADDRESS_GUI, Constants.IP_PORT_SENTINEL_SPY,_ea)
            {

            };

             SentinelReceiver.StartEventReceiver();

            _SentinelSender = new Sender(Constants.IP_ADDRESS_GUI, Constants.IP_PORT_SPY_SENTINEL);

        

            //ControlNameArgs<MainButton> args2 = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Notifications);
            //OHSpyglassEvents.EventButtonSelected.Broadcast(args2);

            events.OfType<SentinelMessage>().listener += HandleSendMessageEvent;

        }

        private void HandleSendMessageEvent(SentinelMessage sm)
        {
            var message = new Message();
            message.ID = sm.ID;
            message.ReceivedOn = sm.Time;
            message.Text = sm.Text;
           
            _ea.GetEvent<MessageSentEvent>().Publish(message);
              
        }

        public Task GetShiftState(Action<bool, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public  Task RequestShiftStateChange(Action<bool,Exception> callback, bool state)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task GetCurrentShiftNoteTotalCount(Action<int,Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(15, null);
            }
            else
            {
                callback(0, error);
            }

            return Task.CompletedTask;
        }

        public Task CanChangeShiftState(Action<bool, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task TransportStateChangeEvent(Action<bool, Exception> callback, bool state, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task RequestTransportStateChange(Action<bool, Exception> callback, bool state)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task CanChangeTransportState(Action<bool, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task TransportALlMotorsStateChange(Action<bool, Exception> callback, bool state, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task RequestAllTransportMotorsStateChange(Action<bool, Exception> callback, bool state, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task CanRequestAllTransportMotorStateChange(Action<int, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(15, null);
            }
            else
            {
                callback(0, error);
            }

            return Task.CompletedTask;
        }

        public Task FeedScanMotorStateChange(Action<bool, Exception> callback, bool state, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task RequestFeedScanMotorStateChange(Action<bool, Exception> callback, bool state)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task RequestFeedScanMotorStateChange(Action<bool, Exception> callback, bool state, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task CanChangeFeedScanMotorState(Action<bool, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task CanChangeFeedScanMotorSpeed(Action<bool, Exception> callback, int speed)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task GetCurrentFeedScanMotorSpeed(Action<int, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(15, null);
            }
            else
            {
                callback(0, error);
            }

            return Task.CompletedTask;
        }

        public Task RequestSinglerChange(Action<bool, Exception> callback, bool state)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }

        public Task CanChangeSinglerState(Action<bool, Exception> callback)
        {
            Exception error = null;

            if (error == null)
            {
                callback(true, null);
            }
            else
            {
                callback(false, error);
            }

            return Task.CompletedTask;
        }
    }
}



