using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Model;
using SpyGlass.Framework.Repository;
using SpyGlass.Framework.Utils;
using System.Collections.ObjectModel;

namespace SpyGlass.Messages
{
    public class MessagesViewModel:BindableBase
    {
        IEventAggregator _ea;
        IRepository<IMessage> _repo;
        
        public MessagesViewModel(IEventAggregator ea)
        {
            Messages = new ObservableCollection<IMessage>();
           

            _ea = ea;
          //  _repo = repo;

            this.Subscribe();

        }

        public void Subscribe()
        {
            _ea.GetEvent<MessageSentEvent>()
              .Subscribe(MessageReceived, ThreadOption.UIThread, true);
        }

        private void MessageReceived(IMessage message)
        {
           
            Messages.Insert(0, message); 

            if(Messages.Count>100)
            {
                Messages.RemoveAt(Messages.Count - 1);
            }

          //  _repo.Save(message);
        }

        private ObservableCollection<IMessage> _messages;
        public ObservableCollection<IMessage> Messages
        {
            get => _messages;
            set => SetProperty(ref _messages, value);
        }
    }
}
