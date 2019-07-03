using System;
using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Model;
using SpyGlass.Framework.Services;
using SpyGlass.Messages;

namespace SpyGlass.Core.ViewModels
{
    public class ShellViewModel:BindableBase
    {
        ISentinelService _service;
        IEventAggregator _ea;

        public ShellViewModel(IEventAggregator ea)
        {
             _ea = ea;
            _ea.GetEvent<MessageSentEvent>().Subscribe((e) => TestMessage(e));
        }

        private void TestMessage(IMessage e)
        {
            var msg = e;
        }
    }
}
