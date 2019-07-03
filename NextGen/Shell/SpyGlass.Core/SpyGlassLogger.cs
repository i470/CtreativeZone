using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;
using Prism.Logging;

namespace SpyGlass.Core
{
    public class SpyGlassLogger:ILoggerFacade
    {
        public SpyGlassLogger()
        {
            var config = new NLog.Config.LoggingConfiguration();
            NLog.LogManager.Configuration = config;
        }

        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        public void Log(string message, Category category, Priority priority)
        {
            throw new NotImplementedException();
        }
    }
}
