using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Events;
using Prism.Ioc;
using Prism.Modularity;
using SpyGlass.Framework.Events;

namespace SpyGlass.Diagnostics
{
    public class DiagnosticsModule:IModule
    {
        private IEventAggregator _ea;
        private IContainerProvider _cp;

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
           // throw new NotImplementedException();
        }

        public void OnInitialized(IContainerProvider containerProvider)
        {
            _cp = containerProvider;
            _ea = _cp.Resolve<IEventAggregator>();
            _ea.GetEvent<NavigationEvent>().Subscribe(Navigate, ThreadOption.UIThread, true);
        }

        private void Navigate(string view)
        {
           // var vm = new DiagnosticsViewModel(_ea, _cp);

        }
    }
}
