using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Commands;
using Prism.Events;
using Prism.Ioc;
using Prism.Mvvm;
using Prism.Regions;
using SpyGlass.Diagnostics;
using SpyGlass.Framework.Events;

namespace SpyGlass.Core.ViewModels
{
   public class MainMenuViewModel:BindableBase, INavigationAware
   {
       private IEventAggregator _ea;
       private IRegionManager _rm;

       private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        public  DelegateCommand<string> NavigateCommand { get; }

        public MainMenuViewModel(IEventAggregator ea, IRegionManager rm)
        {
            _ea = ea;
            _rm = rm;
          //  _rm.RegisterViewWithRegion(Regions.RootContentRegion, typeof(DiagnosticsView));
          //  _rm.RegisterViewWithRegion(Regions.RootContentRegion, typeof(viewPort3dControl));

            NavigateCommand = new DelegateCommand<string>(Navigate,CanNavigate);
            _ea.GetEvent<NavigationEvent>().Subscribe(HandleNavigationEvent);
        }

        private bool CanNavigate(string arg)
        {
            return true;
        }

        private void Navigate(string view)
        {
           HandleNavigationEvent(view);
        }

        private void HandleNavigationEvent(string view)
        {
            if (!view.Contains("Context")) //we only care about content navigation
            {
                Logger.Info($"Navigating to view {view}");
                IRegionManager regionManager = _rm;
                regionManager.RequestNavigate(Regions.RootContentRegion,
                    new Uri(view, UriKind.Relative));
            }

        }

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            var x = navigationContext;
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
            
        }
   }
}
