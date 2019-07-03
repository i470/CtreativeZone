using Common.Types;
using CPS;
using GUIEvents;
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

namespace SpyGlass.Shift
{
    /// <summary>
    /// Interaction logic for ShiftView.xaml
    /// </summary>
    public partial class ShiftView : UserControl
    {
        public ShiftView()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Shift);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
        }
    }
}
