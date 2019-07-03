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
using Common.Types;
using CPS;
using GUIEvents;
using Prism.Events;
using SpyGlass.Core.ViewModels;
using Exception = System.Exception;

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for DiagnosticsView.xaml
    /// </summary>
    public partial class DiagnosticsView : UserControl
    {
        public readonly string TRANSPORT = "TRASNPORT";
        public readonly string SINGLER = "SINGLER";
        public readonly string MASHINE_INTERLOCKS = "MASHINE INTERLOCKS";


        public DiagnosticsView(IEventAggregator ea)
        {
            InitializeComponent();
            this.DataContext = new DiagnosticsViewModel(ea);
        }

        private void ListBoxItem_Selected(object sender, RoutedEventArgs e)
        {

            try
            {

                {
                    VisualStateManager.GoToState(this, "TransportState", true);

                    this.txtSubTitle.Text = TRANSPORT;
                    this.grdTransportMotors.Visibility = Visibility.Visible;
                    this.grdSingler.Visibility = Visibility.Collapsed;
                    rowBottom.Height = new GridLength(200) ;
                    grdBottom.Visibility = Visibility.Visible;

                    ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Transport);
                    OHSpyglassEvents.EventButtonSelected.Broadcast(args);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
            
        }

        private void LstSingler_Selected(object sender, RoutedEventArgs e)
        {
            try
            {
                if (this.txtSubTitle.Text != SINGLER)
                {
                    _ = VisualStateManager.GoToState(this, "SinglerState", true);

                    this.txtSubTitle.Text = SINGLER;
                    this.grdTransportMotors.Visibility = Visibility.Collapsed;
                    this.grdSingler.Visibility = Visibility.Visible;

                    rowBottom.Height = new GridLength(0);
                    grdBottom.Visibility = Visibility.Collapsed;

                    ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.DiagnosticsSingler);
                    OHSpyglassEvents.EventButtonSelected.Broadcast(args);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        private void LstMachineInterlocks_Selected(object sender, RoutedEventArgs e)
        {
            try
            {

                if (this.txtSubTitle.Text != MASHINE_INTERLOCKS)
                {
                    _ = VisualStateManager.GoToState(this, "TransportState", true);

                    this.txtSubTitle.Text = MASHINE_INTERLOCKS;
                    this.grdTransportMotors.Visibility = Visibility.Collapsed;
                    this.grdSingler.Visibility = Visibility.Collapsed;

                    rowBottom.Height = new GridLength(0);
                    grdBottom.Visibility = Visibility.Collapsed;

                    ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.DiagnosticsMachineInterlocks);
                    OHSpyglassEvents.EventButtonSelected.Broadcast(args);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }
    }
}
