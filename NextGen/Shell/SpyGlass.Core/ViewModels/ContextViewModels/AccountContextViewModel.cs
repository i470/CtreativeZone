using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Events;
using Prism.Mvvm;

namespace SpyGlass.Core.ViewModels.ContextViewModels
{
    public class AccountContextViewModel:SpyGlassViewModel
    {
        public AccountContextViewModel(IEventAggregator ea) : base(ea)
        {
            Title = "ACCOUNT";
        }
    }
}
