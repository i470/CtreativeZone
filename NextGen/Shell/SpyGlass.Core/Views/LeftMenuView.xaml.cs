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

namespace SpyGlass.Core
{
    /// <summary>
    /// Interaction logic for LeftMenuView.xaml
    /// </summary>
    public partial class LeftMenuView : UserControl
    {

        private IEventAggregator _ea;
        private IRegionManager _rm;
        public LeftMenuView(IEventAggregator ea, IRegionManager rm)
        {
            InitializeComponent();
            _ea = ea;
            _rm = rm;
        }

        private void PackIcon_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            _rm.RequestNavigate(Regions.RootContentRegion, new Uri("MainMenu", UriKind.Relative));
        }

        private void PackIcon_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            _rm.RequestNavigate(Regions.RootContentRegion, new Uri("MainMenu", UriKind.Relative));
        }
    }
}
