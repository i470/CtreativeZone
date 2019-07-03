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

namespace SpyGlass.Diagnostics
{
    /// <summary>
    /// Interaction logic for DiagnosticsView.xaml
    /// </summary>
    public partial class DiagnosticsView : UserControl
    {
        public DiagnosticsView(IEventAggregator ea, IRegionManager rm, IContainerProvider cp, IContainerRegistry cr)
        {
            InitializeComponent();
            this.DataContext = new DiagnosticsViewModel(ea,rm, cp, cr);
        }
    }
}
