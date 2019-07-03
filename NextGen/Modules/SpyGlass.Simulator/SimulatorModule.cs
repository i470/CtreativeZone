using Prism.Ioc;
using Prism.Modularity;
using SpyGlass.Framework.Services;

namespace SpyGlass.Simulator
{
    public class SimulatorModule : IModule
    {
        public void OnInitialized(IContainerProvider containerProvider)
        { 
            var service = containerProvider.Resolve<ISentinelService>();
            service.StartBrodcasting();
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.Register<ISentinelService, SentinelService>();
        }
    }
}
