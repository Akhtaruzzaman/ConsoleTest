using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceLearn
{
    public class DigitalProductModel : IProductModel
    {
        public string Title { get; set; }
        public bool HasOrderBeenCompleted { get; private set; }
        public int TotalDownloadLeft { get; private set; } = 5;
        public void ShipItem(CustomerModel customer)
        {
            if (!HasOrderBeenCompleted)
            {
                Console.WriteLine($"Simulating emailing {Title} to {customer.Email}");
                TotalDownloadLeft--;
                if (TotalDownloadLeft < 1)
                {
                    HasOrderBeenCompleted = true;
                    TotalDownloadLeft = 0;
                }
            }
        }
    }
}
