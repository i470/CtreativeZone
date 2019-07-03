using SpyGlass.Design.Wpf;
using SpyGlass.Framework.Model;
using System;
using System.Globalization;
using System.Windows.Data;

namespace SpyGlass.Messages
{
    public class MessageTypeIconConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var type = value as MessageType?;

            if(type!=null)
            {
                if (type == MessageType.Error)
                    return "LightbulbOnOutline";
                if (type == MessageType.Information)
                    return "InformationOutline";
                if (type == MessageType.Log)
                    return "database";
                if (type == MessageType.Warning)
                    return "BellRingOutline";
                if (type == MessageType.Unknown)
                    return "MessageTextOutline";
            }

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
