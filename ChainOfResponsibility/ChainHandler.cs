using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChainOfResponsibility
{
    interface IHandler
    {
        void SetNextHandler(IHandler handler);
        void Process(Request request);
    }
    class BaseHandler : IHandler
    {
        protected IHandler _nextHandler;
        public BaseHandler()
        {
            _nextHandler = null;
        }
        public virtual void Process(Request request)
        {
            throw new NotImplementedException();
        }

        public void SetNextHandler(IHandler handler)
        {
            _nextHandler = handler;
        }
    }
    class Request
    {
        public object Data { get; set; }
        public List<string> ValidationMessage;
        public Request()
        {
            ValidationMessage = new List<string>();
        }

    }
}
