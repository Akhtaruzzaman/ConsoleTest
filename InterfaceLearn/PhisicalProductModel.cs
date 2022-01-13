using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceLearn
{
    public class PhisicalProductModel : IProductModel
    {
        public string Title { get; set; }
        public bool HasOrderBeenCompleted { get; private set; }
        public void ShipItem(CustomerModel customer)
        {
            if (!HasOrderBeenCompleted)
            {
                Console.WriteLine($"Simulating shipping {Title} to {customer.Name} in {customer.Address}");
                HasOrderBeenCompleted = true;
            }
        }
    }
}
