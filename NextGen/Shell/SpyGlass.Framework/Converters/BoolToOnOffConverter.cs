using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace SpyGlass.Framework.Converters
{
    public class BoolToOnOffConverter:IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;

            if ((bool) value)
            {
                return "ON";
            }

            return "OFF";

        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class EngineOnOffConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;

            if ((bool)value)
            {
                return "EngineOutline";
            }

            return "EngineOffOutline";

        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class ColorOnOffConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;

            if ((bool)value)
            {
                return new SolidColorBrush(Color.FromRgb(193, 211, 144)); 
            }

            return new SolidColorBrush(Color.FromRgb(244, 81, 108));

        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
