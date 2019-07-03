using System;
using System.Collections.Generic;
using System.Diagnostics;
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
using SpyGlass.Core.ViewModels;
using Unity;

namespace SpyGlass.Core
{
    /// <summary>
    /// Interaction logic for MessagesControl.xaml
    /// </summary>
    public partial class MessagesControl : UserControl
    {

        public readonly string TRANSPORT = "TRASNPORT";
        public readonly string SINGLER = "SINGLER";
        public readonly string MASHINE_INTERLOCKS = "MASHINE INTERLOCKS";

        public MessagesControl(IUnityContainer container)
        {
            InitializeComponent();
            this.DataContext =  container.Resolve<DiagnosticsViewModel>();
        }

        private void ListBoxItem_OnSelected(object sender, RoutedEventArgs e)
        {
            try
            {

                {
                    

                    this.textBlock.Text = TRANSPORT;
                    this.stkTransport.Visibility = Visibility.Visible;
                    this.grdSingler.Visibility = Visibility.Collapsed;
                    this.grdMInterlocks.Visibility = Visibility.Collapsed;

                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        private void LstSingler_OnSelected(object sender, RoutedEventArgs e)
        {
            try
            {

                {


                    this.textBlock.Text = SINGLER;
                    this.stkTransport.Visibility = Visibility.Collapsed;
                    this.grdSingler.Visibility = Visibility.Visible;
                    this.grdMInterlocks.Visibility = Visibility.Collapsed;

                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        private void LstMachineInterlocks_OnSelected(object sender, RoutedEventArgs e)
        {
            

            try
            {

                {

                    this.textBlock.Text = MASHINE_INTERLOCKS;
                    this.stkTransport.Visibility = Visibility.Collapsed;
                    this.grdSingler.Visibility = Visibility.Collapsed;
                    this.grdMInterlocks.Visibility = Visibility.Visible;

                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }
    }
}
