using System;

namespace SpyGlass.Framework.Model
{
    public interface IMessage
    {
        MessageType Type { get; }
        string Source { get;  }
        string Signature { get; }
        Guid ID { get; }
        DateTime ReceivedOn { get;  }
        string Text { get;  }
        
    }

    public enum MessageType
    {
        Unknown,
        Error,
        Information,
        Warning,
        Log

    }

}