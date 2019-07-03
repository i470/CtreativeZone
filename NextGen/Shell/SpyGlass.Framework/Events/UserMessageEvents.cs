using System;
using Prism.Events;
using SpyGlass.Framework.Model;

namespace SpyGlass.Messages
{
    public class ResponseRequireMessageReceived: PubSubEvent<IMessage>
    {
    }

    public class MessageReceivedEvent:PubSubEvent<IMessage>
    {

    }

    public class MessageSentEvent : PubSubEvent<IMessage>
    {
       
    }

    public class MemoryUsageEvent : PubSubEvent<float>
    {

    }

    public class UserInteractionRequestEvent : PubSubEvent<IMessage>
    {

    }

    public class UserInteractionResponseEvent : PubSubEvent<IMessage>
    {

    }
}