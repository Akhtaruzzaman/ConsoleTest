using System;
using System.Collections.Generic;
using System.Text;

namespace AzureFunctionApp
{
    public class TestClass
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public TestClass(string name, string address)
        {
            this.Name = name;
            this.Address = address;
        }
        public void GetClass()
        {

        }
    }
}
