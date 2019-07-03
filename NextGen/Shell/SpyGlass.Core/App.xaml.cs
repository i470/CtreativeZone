using Prism.Ioc;
using Prism.Modularity;
using Prism.Regions;
using Prism.Unity;
using SpyGlass.Core.Views;
using SpyGlass.Framework.Services;
using SpyGlass.Messages;
using SpyGlass.Simulator;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using Prism.Mvvm;
using SpyGlass.Core.ViewModels;
using SpyGlass.Core.ViewModels.ContextViewModels;
using SpyGlass.Core.Views.ContextViews;
using SpyGlass.Diagnostics;
using NLog;

namespace SpyGlass.Core
{
    
    public partial class App : PrismApplication
    {
        IRegionManager _regionManager;
        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();


        protected override Window CreateShell()
        {
            _configureLogger();

            _regionManager = Container.Resolve<IRegionManager>();

            _regionManager.RegisterViewWithRegion(Regions.LeftMenuRegion, typeof(LeftMenuView));
            _regionManager.RegisterViewWithRegion(Regions.TopBarRegion, typeof(TitleBarView));
            _regionManager.RegisterViewWithRegion(Regions.StatusBarRegion, typeof(StatusBarView));
            _regionManager.RegisterViewWithRegion(Regions.RootContentRegion, typeof(LoginView));
            _regionManager.RegisterViewWithRegion(Regions.RightMenuRegion, typeof(MessagesControl));


            Logger.Info("Created Shell");
            return Container.Resolve<Shell>();
          
        }

        private static void _configureLogger()
        {
            var config = new NLog.Config.LoggingConfiguration();

            // Targets where to log to: File and Console
            var logfile = new NLog.Targets.FileTarget("logfile") {FileName = "C:\\CPS\\LogFiles\\SpyGlass.log"};


            // Rules for mapping loggers to targets            
            config.AddRule(LogLevel.Info, LogLevel.Fatal, logfile);


            // Apply config           
            NLog.LogManager.Configuration = config;
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.Register<SpyGlassViewModel>();
            containerRegistry.RegisterSingleton(typeof(ViewModels.DiagnosticsViewModel));
            containerRegistry.Register<ISentinelService, SentinelService>();
            containerRegistry.RegisterForNavigation<MainMenu,MainMenuViewModel>();
            containerRegistry.RegisterForNavigation<Views.DiagnosticsView, ViewModels.DiagnosticsViewModel>();
            containerRegistry.RegisterForNavigation<Views.ShiftView, ShiftViewModel>();
            containerRegistry.RegisterForNavigation<viewPort3dControl,ContentTestViewModel>();
            containerRegistry.RegisterForNavigation<AccountContextView,AccountContextViewModel>("AccountContextView");
            containerRegistry.RegisterForNavigation<DiagnosticsContextView, DiagnosticsContextViewModel>("DiagnosticsContextView");
            containerRegistry.RegisterForNavigation<HelpContextView, HelpContextViewModel>("HelpContextView");
            containerRegistry.RegisterForNavigation<MessagesContextView, MessagesContextViewModel>("MessagesContextView");
        }

        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            try
            {
                Logger.Info("Loading Modules");
                _ = moduleCatalog.AddModule<SimulatorModule>();
                moduleCatalog.AddModule<DiagnosticsModule>();
                // moduleCatalog.AddModule<MessagesModule>();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                
            }
           
        }

        protected override void ConfigureViewModelLocator()
        {
            base.ConfigureViewModelLocator();

            // generic type
            ViewModelLocationProvider.Register<viewPort3dControl, ContentTestViewModel>();
            ViewModelLocationProvider.Register<MainMenu, MainMenuViewModel>();
            ViewModelLocationProvider.Register<SpyGlass.Core.Views.DiagnosticsView,ViewModels.DiagnosticsViewModel>();
        }
    }
}
