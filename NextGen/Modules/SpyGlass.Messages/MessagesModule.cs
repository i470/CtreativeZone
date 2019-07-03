using Prism.Events;
using Prism.Ioc;
using Prism.Modularity;
using Prism.Regions;
using SpyGlass.Framework.Model;
using SpyGlass.Framework.Repository;

namespace SpyGlass.Messages
{
    public class MessagesModule : IModule
    {
        public void OnInitialized(IContainerProvider containerProvider)
        {

            var vm = new MessagesViewModel(containerProvider.Resolve<IEventAggregator>());
            vm.Subscribe();

            var regionManager = containerProvider.Resolve<IRegionManager>();
            regionManager.RegisterViewWithRegion("RightMenuRegion", typeof(MessagesView));
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.Register<IModule,MessagesModule>();
          //  containerRegistry.RegisterInstance(typeof(IRepository<IMessage>),
             //   new MessageRepository(@"Messages.db"));

        }
    }
}



