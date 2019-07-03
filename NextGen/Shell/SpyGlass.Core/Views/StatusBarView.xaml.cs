using GUIEvents;
using Prism.Events;
using SpyGlass.Framework.Model;
using SpyGlass.Messages;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
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

namespace SpyGlass.Core.Views
{
    /// <summary>
    /// Interaction logic for StatusBarGridView.xaml
    /// </summary>
    public partial class StatusBarView : UserControl
    {
        IEventAggregator _ea;
        int counter = 0;
        public StatusBarView(IEventAggregator ea)
        {
          
            InitializeComponent();
            _ea = ea;
            _ea.GetEvent<MessageSentEvent>().Subscribe(Handle);
            _ea.GetEvent<MemoryUsageEvent>().Subscribe(ShowMemory, ThreadOption.UIThread);

            TrackMemmoryUsage();
        }

        private void TrackMemmoryUsage()
        {
            Task.Run(MemmoryTask);
        }

        private async Task MemmoryTask()
        {
            while (true)
            {
                string procName = Process.GetCurrentProcess().ProcessName;
                using (PerformanceCounter pc = new PerformanceCounter("Process", "Private Bytes", procName))
                    _ea.GetEvent<MemoryUsageEvent>().Publish(pc.NextValue());
                await Task.Delay(1000);
            }
           
        }

        private void ShowMemory(float memzise)
        {
            var size = Math.Ceiling(memzise/1024/1024);
            txtMemory.Text = size.ToString();
        }

        private void Handle(IMessage msg)
        {
            if(counter%2==0)
            {
                this.TCSIcon.Foreground = new SolidColorBrush(Colors.White);
            }else
            {
                this.TCSIcon.Foreground = new SolidColorBrush(Colors.Black);
            }

            counter++;
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {

            ControlNameArgs<MainButton> args = new ControlNameArgs<MainButton>(PageName.Main, MainButton.Shift);
            
                OHSpyglassEvents.EventButtonSelected.Broadcast(args);

                ControlNameArgs<TransportDiagnosticsButton> args2 = new ControlNameArgs<TransportDiagnosticsButton>(
                    PageName.DiagnosticsTransport, TransportDiagnosticsButton.EnableMotors);
                OHSpyglassEvents.EventButtonSelected.Broadcast(args2);

        }
    }
}
