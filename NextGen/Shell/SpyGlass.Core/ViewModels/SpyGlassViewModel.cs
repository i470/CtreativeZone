using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Services;

namespace SpyGlass.Core.ViewModels
{
    public class SpyGlassViewModel: BindableBase
    {
        private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        public IEventAggregator _ea;
        public ISentinelService _ss;

        public SpyGlassViewModel(IEventAggregator ea, ISentinelService ss)
        {
            _ea = ea;
            _ss = ss;
        }

        private string _title;
        public string Title
        {
            get => _title;
            set => SetProperty(ref _title, value);
        }
    }
}
