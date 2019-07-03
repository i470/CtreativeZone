using Prism.Mvvm;
using Prism.Events;
using System;
using SpyGlass.Framework.Model;

namespace SpyGlass.Messages
{
    public  class Message : BindableBase, IMessage
    {
        public Message()
        {
            Signature = System.Security.Principal.WindowsIdentity.GetCurrent().Name;
            ReceivedOn = DateTime.Now;

        }

        public Message(string msg):this()
        {
            Text = msg;
        }

        private string _source;
        public string Source
        {
            get => _source;
            set => SetProperty(ref _source, value);
        }


        private Guid _id = new Guid();
        public Guid ID
        {
            get => _id;
            set => SetProperty(ref _id, value);
        }

        private DateTime _receivedOn;
        public DateTime ReceivedOn
        {
            get => _receivedOn;
            set => SetProperty(ref _receivedOn, value);
        }

        private string _text;
        public string Text
        {
            get => _text;
            set => SetProperty(ref _text, value);
        }

        private MessageType _type;
        public MessageType Type
        {
            get => _type;
            set => SetProperty(ref _type, value);
        }

        
        private string _signature;
        public string Signature
        {
            get => _signature;
            set => SetProperty(ref _signature, value);
        }
    }

    /** These type of Messages require user reponse **/
    public class ResponseRequiredMessage : Message
    {
       
        public string RequestType;
        
        public ResponseRequiredMessage():base()
        {
            
            Type = MessageType.Error;
           
        }



        private string _response;
        public string Response
        {
            get => _response;
            set => SetProperty(ref _response, value);
        }
    }
    public class LogMessage:Message
    {
        public LogMessage(string msg):base()
        {
            Text = msg;
            Type = MessageType.Log;
        }
    }

    public class InfoMessage : Message
    {
        public InfoMessage(string msg) : base()
        {
            Text = msg;
            Type = MessageType.Information;
        }
    }
}
