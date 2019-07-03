using Prism.Events;
using Prism.Ioc;
using Prism.Regions;

namespace SpyGlass.Diagnostics
{
    public class DiagnosticsViewModel
    {
        private IEventAggregator _ea;
        private IContainerProvider _cp;

        public DiagnosticsViewModel(IEventAggregator ea, IRegionManager rm, IContainerProvider cp, IContainerRegistry cr)
        {
            _ea = ea;
            _cp = cp;
        }
    }
}