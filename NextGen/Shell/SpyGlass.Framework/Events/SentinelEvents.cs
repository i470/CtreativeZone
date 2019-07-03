using CPS;
using Prism.Events;

namespace SpyGlass.Framework.Events
{

    public class SentinelEventPayload
    {
        public object Sender;
        public AbstractComponentEventArgs Args;

        public SentinelEventPayload(object s, AbstractComponentEventArgs a)
        {
            Sender = s;
            Args = a;
        }

        public override string ToString()
        {
            var args = Args.ToString();
            var sender = Sender.GetType().Name;

            return $"Sender:{sender}, args:{args}";
        }
    }

    public class GuiEventPayload
    {
        public object Sender;
        public AbstractComponentEventArgs Args;

        public GuiEventPayload(object s, AbstractComponentEventArgs a)
        {
            Sender = s;
            Args = a;
        }

        public override string ToString()
        {
            var args = Args.ToString();
            var sender = Sender.GetType().Name;

            return $"Sender:{sender}, args:{args}";
        }
    }
    public class SentinelSentEvent : PubSubEvent<SentinelEventPayload>
    {

    }

    public class GuiSentEvent : PubSubEvent<string>
    {

    }
}
