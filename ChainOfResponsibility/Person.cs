using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChainOfResponsibility
{
    public class Person
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Address { get; set; }
    }
    class MaxAgeHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if(request.Data is Person person)
            {
                if (person.Age > 55)
                {
                    request.ValidationMessage.Add("Age limit cross");
                }
                if (person.Age < 18)
                {
                    request.ValidationMessage.Add("Not adult yet");
                }
                if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
            }
            else
            {
                throw new Exception("Invalid message data");
            }
        }
    }
    class NameLenghtHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if(request.Data is Person person)
            {
                if (person.Name.Length >50)
                {
                    request.ValidationMessage.Add("Name Length limit cross");
                }
                if (person.Name.Length < 3)
                {
                    request.ValidationMessage.Add("Name To Short");
                }
                if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
            }
            else
            {
                throw new Exception("Invalid message data");
            }
        }
    }
    class AddressLenghtHandler : BaseHandler
    {
        public override void Process(Request request)
        {
            if(request.Data is Person person)
            {
                if (person.Address.Length >100)
                {
                    request.ValidationMessage.Add("Adress Length limit cross");
                }
                if (person.Address.Length < 10)
                {
                    request.ValidationMessage.Add("Adress To Short");
                }
                if (_nextHandler != null)
                {
                    _nextHandler.Process(request);
                }
            }
            else
            {
                throw new Exception("Invalid message data");
            }
        }
    }
}
