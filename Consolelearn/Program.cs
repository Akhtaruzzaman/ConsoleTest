using System;

namespace ReactiveFuntions
{
    class Program
    {
        static void Main(string[] args)
        {
            var oservable = new EvenNumberOservable();
            var observer = new ConsoleLogObserver();
            oservable.Subscribe(observer);

            //var evennumber = new EvenNumberSubject();
            //evennumber.Subscribe(Console.WriteLine);
            //evennumber.Run();
            Console.ReadKey();
        }
    }
}
