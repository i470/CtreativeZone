using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using SpyGlass.Framework.Events;
using SpyGlass.Framework.Services;

namespace SpyGlass.Core.ViewModels.ContextViewModels
{
   public  class DiagnosticsContextViewModel: SpyGlassViewModel
   {
       private DelegateCommand ChangeTransportState { get;  }

        public DiagnosticsContextViewModel(IEventAggregator ea, ISentinelService ss) : base(ea,ss)
        {
            Title = "DIAGNOSTICS";
            ChangeTransportState = new DelegateCommand(ChangeTransportStateExecute, CanChangeTransportState);
        }

        private bool CanChangeTransportState()
        {
            var canChange = false;

            _ss.CanChangeTransportState(((resultingState, exception) =>
            {
                if (exception != null)
                {
                    canChange = false;
                    _ea.GetEvent<ExceptionEvent>().Publish(exception);
                }
                else
                {
                    canChange = true;
                }
            }));

            return canChange;
        }

        private void ChangeTransportStateExecute()
        {
            _ss.RequestTransportStateChange(((resultingState, exception) =>
            {
                TransportState = resultingState;

                if (exception != null)
                {
                  
                    _ea.GetEvent<ExceptionEvent>().Publish(exception);
                }
               

            }), TransportState);
        }

        public bool TransportState;
   }
}
