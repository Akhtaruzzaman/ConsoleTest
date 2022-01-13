using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReactiveFuntions
{
    class ConsoleLogObserver : IObserver<int>
    {
        public void OnCompleted()
        {
            Console.WriteLine("Complete");
        }

        public void OnError(Exception error)
        {
            Console.WriteLine("Error: " + error.Message);
        }

        public void OnNext(int value)
        {
            Console.WriteLine("Even Number: " + value);
        }
    }
}
