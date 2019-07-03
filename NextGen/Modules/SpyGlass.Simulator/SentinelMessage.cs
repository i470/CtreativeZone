using System;

namespace SpyGlass.Simulator
{
    public class SentinelMessage 
    {
        /// <summary>
        /// ID for identification, every message has unique id assigned to them for tracking.
        /// </summary>
        public Guid ID { get; set; }

        /// <summary>
        /// time of the message, usually time when message arrive in spyglass
        /// </summary>
        public DateTime Time
        {
            get => _time;
            set
            {
                if (_time != value)
                {
                    _time = value;
                }
            }
        }

        /// <summary>
        /// Text of the message
        /// </summary>
        public string Text
        {
            get => _Text; set
            {
                if (_Text != value)
                {
                    _Text = value;
                }
            }
        }

        /// <summary>
        /// use for filter message user control to hightlight finded text in user message's window
        /// </summary>
        public string FindText
        {
            get => _FindText; set
            {
                if (_FindText != value)
                {
                    _FindText = value;
                }
            }
        }

        /// <summary>
        /// user to determine that the message is readed ort not.
        /// </summary>
        public bool IsReaded
        {
            get => _IsReaded;
            set
            {
                if (_IsReaded != value)
                {
                    _IsReaded = value;
                    
                }
            }
        }

        /// <summary>
        /// what is the message type or in fact severity level of the message.
        /// </summary>
        public SentinelMessageType MessageType
        {
            get => _MessageType; set
            {
                if (_MessageType != value)
                {
                    _MessageType = value;
                }
            }
        }

        /// <summary>
        /// user action text that tells what user need to respond as the result of the message,
        /// </summary>
        public string UserActionText
        {
            get => _UserActionText;
            set => _UserActionText = value;
        }

        /// <summary>
        /// determine what button user selected on the messageBox Window.
        /// </summary>
        public String SelectedButton
        {
            get => _SelectedButton;
            set => _SelectedButton = value;
        }

        /// <summary>
        /// if it is true message box show an input box to let the user to enter text in it.
        /// </summary>
        public bool IncludeResponseTextbox
        {
            get => _IncludeResponseTextbox;
            set => _IncludeResponseTextbox = value;
        }

        /// <summary>
        /// Responded text in messagebox's textbox
        /// </summary>
        public string ResponseTextbox
        {
            get => _ResponseTextbox;
            set => _ResponseTextbox = value;
        }

        /// <summary>
        /// get what kind or set of button we need to show in messagebox to user
        /// </summary>
        public string ButtonChoices { get; set; }

        /// <summary>
        /// Tells us that the message's Snapshot Time exceed than the Max.
        /// </summary>
        public bool IsOverFlow { get; private set; }

        private double _TimePercentage;
        public double TimePercentage
        {
            get => _TimePercentage;
            set
            {
                // the first message that it's time is exceed that SnapshotBar Length we need to consider
                // as Separator and do not let Time Indicator Mover to overflow by setting the max to 100 here.
                if (value > 100)
                {
                    IsOverFlow = true;
                    _TimePercentage = 100;
                }
                else
                    _TimePercentage = value;
            }
        }

        private DateTime _time;
        private string _Text;
        private string _FindText;
        private bool _IsReaded;
        private SentinelMessageType _MessageType;
        private string _UserActionText;
        private string _SelectedButton;
        private bool _IncludeResponseTextbox;
        private string _ResponseTextbox;

        public SentinelMessage()
        {
            ID = Guid.NewGuid();
        }
    }

    public enum SentinelMessageType
    {
        Log,
        Notification,
        Interaction,
        PlaceHolder,
        Separator,
    }
}
