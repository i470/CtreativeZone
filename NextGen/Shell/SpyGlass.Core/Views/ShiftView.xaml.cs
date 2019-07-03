using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Common.Types;
using CPS;
using GUIEvents;
using Prism.Events;
using Prism.Regions;
using SpyGlass.Core.ViewModels;
using SpyGlass.Messages;

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for ShiftView.xaml
    /// </summary>
    public partial class ShiftView : INavigationAware, IRegionMemberLifetime
    {
        private IEventAggregator _ea;
        private IRegionManager _rm;

        private Storyboard ShiftAnimation;
        private bool IsShiftOn;

        public ShiftView(IEventAggregator ea)
        {
            InitializeComponent();
            _ea = ea;
            this.DataContext = new ShiftViewModel(_ea);
            ShiftAnimation = FindResource("ShiftOnAnimation") as Storyboard;
            ShiftAnimation.Pause();
            IsShiftOn = false;
            btnShift.IsDefault = true;
            txtShiftStart.Text = "";
            this.Loaded += ShiftView_Loaded;
        }

        private void ShiftView_Loaded(object sender, RoutedEventArgs e)
        {
            ShiftAnimation.Begin();
            ShiftAnimation.Stop();
            rectangle.Fill = new SolidColorBrush(Colors.White);
            rectangle1.Fill = new SolidColorBrush(Colors.White);
            rectangle2.Fill = new SolidColorBrush(Colors.White);
        }

        private void btnShift_Click(object sender, RoutedEventArgs e)
        {
            ChangeShiftState();
        }

        private void ChangeShiftState()
        {
            if (IsShiftOn)
            {
                ExecuteEndShift();
            }
            else
            {
                ExecuteStartShift();
            }
        }

        private void ExecuteStartShift()
        {
            IsShiftOn = true;
            ShiftAnimation.Begin();
            var start = DateTime.Now;
            btnShift.Content = "END SHIFT";
            txtShiftStart.Text = $"Shift started at {start}";
            btnShift.Background = FindResource("Pink") as SolidColorBrush;
            btnShift.BorderBrush = FindResource("Pink") as SolidColorBrush;
            btnStartSingler.Visibility = Visibility.Visible;
        }

        private void ExecuteEndShift()
        {
            ShiftAnimation.Stop();
            var start = DateTime.Now;
            IsShiftOn = false;
            txtShiftStart.Text = $"Last shift ended at {start}";
            btnShift.Content = "START SHIFT";
            btnShift.Background = FindResource("LimeGreen") as SolidColorBrush;
            btnShift.BorderBrush = FindResource("LimeGreen") as SolidColorBrush;
            btnStartSingler.Visibility = Visibility.Collapsed;
        }

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
          
            ResumeShiftMode();
        }

        private void ResumeShiftMode()
        {
            if (IsShiftOn)
            {
                ShiftAnimation.Stop();
                ShiftAnimation.Begin();
               

            }
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
          
        }

        public bool KeepAlive => true;

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Singler);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
        }

        private void BtnStartTransport_Checked(object sender, RoutedEventArgs e)
        {
            var btn = (ToggleButton)sender;
            if (btn.IsChecked != null && (bool)btn.IsChecked)
            {
                btn.Content = "ON";
            }
            else
            {
                btn.Content = "OFF";
            }
            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Transport);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
            _ea.GetEvent<MessageSentEvent>().Publish(new InfoMessage($"Transport {btn.Content}"));
        }

        private void BtnStartSingler_Checked(object sender, RoutedEventArgs e)
        {
            var btn = (ToggleButton)sender;
            if(btn.IsChecked!=null && (bool)btn.IsChecked)
            {
                 btn.Content = "ON";
            }else
            {
                btn.Content = "OFF";
            }

            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Singler);
            OHSpyglassEvents.EventButtonSelected.Broadcast(args);
            _ea.GetEvent<MessageSentEvent>().Publish(new InfoMessage($"Singler {btn.Content}"));
        }
    }
}
