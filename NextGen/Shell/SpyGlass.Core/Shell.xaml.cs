using HelixToolkit.Wpf;
using Prism.Events;
using SpyGlass.Core.ViewModels;
using SpyGlass.Core.Views;
using SpyGlass.Framework.Model;
using SpyGlass.Framework.Services;
using SpyGlass.Messages;
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using SpyGlass.Framework.Events;


namespace SpyGlass.Core
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Shell : Window
    {
        

        IEventAggregator _eventAggregator;

        public Shell(IEventAggregator ea)
        {

            
            InitializeComponent();

            _eventAggregator = ea;
            _eventAggregator.GetEvent<ExitApplicationEvent>().Subscribe(() => Exit());
            _eventAggregator.GetEvent<MessageSentEvent>().Subscribe((e) => TestMessage(e));
            LoadUserSettings();
            AssemblePropertyDescriptors();

            this.DataContext = new ShellViewModel(ea);


        }

        private void TestMessage(IMessage e)
        {
            var message = e;
        }

        /*Add Menu Width change events*/
        private void AssemblePropertyDescriptors()
        {
            var leftMenuWidthDescriptor = DependencyPropertyDescriptor
                .FromProperty(ColumnDefinition.WidthProperty, typeof(ColumnDefinition));
            leftMenuWidthDescriptor
                .AddValueChanged(leftMenuColumn, LeftMenuWidthChanged);

            var rightMenuWidthDescriptor = DependencyPropertyDescriptor
                .FromProperty(ColumnDefinition.WidthProperty, typeof(ColumnDefinition));
            rightMenuWidthDescriptor
                .AddValueChanged(rightMenuColumn, RightMenuWidthChanged);
        }

        private void LeftMenuWidthChanged(object sender, EventArgs e)
        {
            var column = sender as ColumnDefinition;

            if(column!=null)
            {
                if(column.ActualWidth>15 && column.ActualWidth < 100)
                {

                }

                Properties.Settings.Default.LeftMenuWidth = column.ActualWidth;
                Properties.Settings.Default.Save();
            }
        }

        private void RightMenuWidthChanged(object sender, EventArgs e)
        {
            var column = sender as ColumnDefinition;

            if (column != null)
            {
                Properties.Settings.Default.RightMenuWidth = column.ActualWidth;
                Properties.Settings.Default.Save();
            }
        }
        private void LoadUserSettings()
        {
            leftMenuColumn.Width = new GridLength(Properties.Settings.Default.LeftMenuWidth, GridUnitType.Star);
            rightMenuColumn.Width = new GridLength(Properties.Settings.Default.RightMenuWidth, GridUnitType.Star);
        }

        private void Exit()
        {
            this.Close();
            _eventAggregator.GetEvent<ApplicationCloseEvent>().Publish();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.Cursor = Cursors.Hand;
            this.DragMove();
        }

        private void Window_MouseUp(object sender, MouseButtonEventArgs e)
        {
            this.Cursor = Cursors.Arrow;
        }

    }
}
