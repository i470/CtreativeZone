using System;
using System.Threading.Tasks;

namespace SpyGlass.Framework.Services
{

    public interface ISentinelService
        {
            Task GetShiftState(Action<bool, Exception> callback);
            Task RequestShiftStateChange(Action<bool, Exception> callback, bool state);
            Task GetCurrentShiftNoteTotalCount(Action<int, Exception> callback);
            Task CanChangeShiftState(Action<bool, Exception> callback);
           
            Task RequestTransportStateChange(Action<bool, Exception> callback, bool state);
            Task CanChangeTransportState(Action<bool, Exception> callback);
           
            Task RequestAllTransportMotorsStateChange(Action<bool, Exception> callback, bool state, int speed);
            Task CanRequestAllTransportMotorStateChange(Action<int, Exception> callback);
            Task FeedScanMotorStateChange(Action<bool, Exception> callback, bool state, int speed);
            Task RequestFeedScanMotorStateChange(Action<bool, Exception> callback, bool state);
            Task RequestFeedScanMotorStateChange(Action<bool, Exception> callback, bool state, int speed);
            Task CanChangeFeedScanMotorState(Action<bool, Exception> callback);
            Task CanChangeFeedScanMotorSpeed(Action<bool, Exception> callback, int speed);

            Task GetCurrentFeedScanMotorSpeed(Action<int, Exception> callback);
            Task RequestSinglerChange(Action<bool, Exception> callback, bool state);
            Task CanChangeSinglerState(Action<bool, Exception> callback);
        }
    
}
