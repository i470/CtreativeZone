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
using Prism.Ioc;
using Prism.Regions;
using SpyGlass.Core.ViewModels;

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for MainMenu.xaml
    /// </summary>
    public partial class MainMenu : UserControl
    {
        private IEventAggregator _ea;
        private IRegionManager _rm;

        public MainMenu(IEventAggregator ea, IRegionManager rm)
        {
            InitializeComponent();
            _ea = ea;
            _rm = rm;

           this.DataContext=new MainMenuViewModel(ea,rm);
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            _rm.RequestNavigate(Regions.RootContentRegion, new Uri("ShiftView",UriKind.Relative));
        }
    }
}
