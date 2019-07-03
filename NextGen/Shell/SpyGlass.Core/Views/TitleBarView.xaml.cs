using Prism.Events;
using Prism.Ioc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Prism.Regions;
using SpyGlass.Framework.Events;

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for TitleBarView.xaml
    /// </summary>
    public partial class TitleBarView : UserControl
    {
        IEventAggregator _eventAggregator;
        private IRegionManager _rm;

        const string diagnostics = "Diagnostics";
        const string account = "Account";
        const string help = "Help";
        const string messages = "Messages";

        public TitleBarView(IEventAggregator eventAggregator,IRegionManager rm)
        {
            _rm = rm;
            _eventAggregator = eventAggregator;
            InitializeComponent();
            this.Loaded += TitleBarView_Loaded;
            _eventAggregator.GetEvent<NavigationEvent>().Subscribe(ExecuteContextNavigation);
        }

        private void ExecuteContextNavigation(string view)
        {
            if (view.Contains("Context")) //we only care about content navigation
            {
                IRegionManager regionManager = _rm;
                regionManager.RequestNavigate(Regions.RightMenuRegion,
                    new Uri(view+"View", UriKind.Relative));
            }
        }

        private void TitleBarView_Loaded(object sender, RoutedEventArgs e)
        {
            NavigateContext(account);
        }

        private void PackIcon_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            _eventAggregator.GetEvent<ExitApplicationEvent>().Publish();
        }

        private void PackIcon_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            _eventAggregator.GetEvent<ExitApplicationEvent>().Publish();
        }

        private void BrdDiagnostics_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(diagnostics);
        }

        private void ChangeVisualState(string state)
        {
            VisualStateManager.GoToState(this, state, true);
        }

        private void BrdMessages_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(messages);
        }

        private void BrdAccount_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(account);
        }

        private void BrdHelp_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(help);
        }

     
        private void IcH_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(help);
        }

        private void IcA_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(account);
        }

        private void BrdDiagnostics_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            NavigateContext(diagnostics);
        }

        private void BrdAccount_MouseEnter(object sender, MouseEventArgs e)
        {
            NavigateContext(account);
        }

        private void BrdDiagnostics_MouseEnter(object sender, MouseEventArgs e)
        {
           
            NavigateContext(diagnostics);
        }

        public void NavigateContext(string state)
        {
            _eventAggregator.GetEvent<NavigationEvent>().Publish(state+"Context");
            ChangeVisualState(state);
        }

        private void BrdMessages_MouseEnter(object sender, MouseEventArgs e)
        {
            NavigateContext(messages);
        }

        private void BrdHelp_MouseEnter(object sender, MouseEventArgs e)
        {
            NavigateContext(help);
        }
    }

    public class ExitApplicationEvent:PubSubEvent
    {
    }
}
