using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Events;

namespace SpyGlass.Framework.Events
{
    public class NavigationEvent : PubSubEvent<string>
    {

    }

    public class ApplicationCloseEvent : PubSubEvent
    {

    }

    public class ExceptionEvent : PubSubEvent<Exception>
    {


    }
}
