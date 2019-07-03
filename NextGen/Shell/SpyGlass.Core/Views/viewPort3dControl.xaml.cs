using HelixToolkit.Wpf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Windows.Media.Media3D;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Prism.Events;
using SpyGlass.Core.ViewModels;

namespace SpyGlass.Core
{
    /// <summary>
    /// Interaction logic for viewPort3dControl.xaml
    /// </summary>
    public partial class viewPort3dControl : UserControl
    {
        private IEventAggregator _ea;

        private string MODEL_PATH = "C:\\3D\\dummy_ru_20190424.obj";
        public viewPort3dControl(IEventAggregator ea)
        {
            InitializeComponent();
            ModelVisual3D device3D = new ModelVisual3D();
            device3D.Content = Display3d(MODEL_PATH);
            // Add to view port
             //viewPort3d.Children.Add(device3D);
              _ea = ea;
              DataContext = new ContentTestViewModel(_ea);
        }

        private Model3D Display3d(string model)
        {
            Model3D device = null;
            try
            {
                //Adding a gesture here
                 // viewPort3d.RotateGesture = new MouseGesture(MouseAction.LeftClick);

                //Import 3D model file
                ModelImporter import = new ModelImporter();

                //Load the 3D model file
                device = import.Load(model);
            }
            catch (Exception e)
            {
                // Handle exception in case can not find the 3D model file
                MessageBox.Show("Exception Error : " + e.StackTrace);
            }
            return device;
        }
    }
}
