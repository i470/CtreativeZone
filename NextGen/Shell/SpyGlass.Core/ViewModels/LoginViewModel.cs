using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using SpyGlass.Messages;

namespace SpyGlass.Core.ViewModels
{
    public class LoginViewModel:BindableBase
    {
        private IEventAggregator _ea;
        private IRegionManager _rm;

        public DelegateCommand LoginCommand;

        public LoginViewModel(IEventAggregator ea, IRegionManager rm)
        {
            _ea = ea;
            _rm = rm;

            LoginCommand = new DelegateCommand(ExecuteLogin, CanLogin);
        }

        private bool CanLogin()
        {
            return true;
        }

        private void ExecuteLogin()
        {
            _ea.GetEvent<MessageSentEvent>().Publish(new InfoMessage("User account authenticated"));
            _rm.RequestNavigate(Regions.RootContentRegion,new Uri("MainMenu", UriKind.Relative));
        }
    }
}
