using System;
using System.Collections.Generic;

namespace InterfaceLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            List<IProductModel> cart = AddSampleData();
            CustomerModel customer = GetCustomer();
            foreach (var prod in cart)
            {
                prod.ShipItem(customer);
            }

            var testintface = new TestInterface();
            testintface.Execute();

            Console.ReadLine();
            Console.ReadKey();
        }
        private static CustomerModel GetCustomer()
        {
            return new CustomerModel
            {
                Name = "Md. Akhtar Uzzaman",
                Address = "Narayanganj",
                Mobile = "01835312312",
                Email = "akhtaruzzaman05@gmail.com",
            };
        }
        public static List<IProductModel> AddSampleData()
        {
            List<IProductModel> output = new List<IProductModel>();
            output.Add(new PhisicalProductModel { Title = "Football" });
            output.Add(new PhisicalProductModel { Title = "T Shirt" });
            output.Add(new DigitalProductModel { Title = "Windows 10" });
            output.Add(new PhisicalProductModel { Title = "Hard Drive" });
            output.Add(new PhisicalProductModel { Title = "Monitor" });
            output.Add(new DigitalProductModel { Title = "MS SQL Server" });
            output.Add(new DigitalProductModel { Title = "Windows Server" });
            return output;
        }
    }
}
