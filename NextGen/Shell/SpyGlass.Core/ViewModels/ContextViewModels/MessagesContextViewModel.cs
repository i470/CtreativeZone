using System.Collections.ObjectModel;
using Prism.Events;
using SpyGlass.Framework.Model;
using SpyGlass.Framework.Repository;
using SpyGlass.Messages;

namespace SpyGlass.Core.ViewModels.ContextViewModels
{
   public  class MessagesContextViewModel: SpyGlassViewModel
    {
        public MessagesContextViewModel(IEventAggregator ea) : base(ea)
        {
            Title = "MESSAGES";
            Messages = new ObservableCollection<IMessage>();


            _ea = ea;
            //  _repo = repo;

            this.Subscribe();
        }

        IEventAggregator _ea;
        IRepository<IMessage> _repo;


        public void Subscribe()
        {
            _ea.GetEvent<MessageSentEvent>()
                .Subscribe(MessageReceived, ThreadOption.UIThread, true);
        }

        private void MessageReceived(IMessage message)
        {

            Messages.Insert(0, message);

            if (Messages.Count > 100)
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
