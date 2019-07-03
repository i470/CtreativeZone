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

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for SinglerView.xaml
    /// </summary>
    public partial class SinglerView : UserControl
    {
        public SinglerView()
        {
            InitializeComponent();
        }

        private void PaddleMotorControl_MouseEnter(object sender, MouseEventArgs e)
        {
            var p =(PaddleMotorControl)sender;
            p.Width = 200+ (200 * 0.30);
            p.Height = 228 + (228 * 0.30);
        }

        private void PaddleMotorControl_MouseLeave(object sender, MouseEventArgs e)
        {
            var p = (PaddleMotorControl)sender;
            p.Width = 200;
            p.Height = 228;
        }
    }
}
