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
using Prism.Events;
using Prism.Regions;
using SpyGlass.Core.ViewModels;
using SpyGlass.Messages;

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for LoginView.xaml
    /// </summary>
    public partial class LoginView : UserControl
    {
        private IEventAggregator _ea;
        private IRegionManager _rm;

        public LoginView(IEventAggregator ea, IRegionManager rm)
        {
            InitializeComponent();
            this.DataContext = new LoginViewModel(ea, rm);

            _ea = ea;
            _rm = rm;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            _ea.GetEvent<MessageSentEvent>().Publish(new Message("User account authenticated"));
            _rm.RequestNavigate(Regions.RootContentRegion, new Uri("MainMenu", UriKind.Relative));
        }
    }
}
