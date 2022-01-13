using System;

namespace MediatorPattern
{
    class Program
    {
        static void Main(string[] args)
        {
            var callcenter = new CabCallCenter();
            var passenger1 = new Passenger("Raju", "Shiddhirganj",3);
            var passenger2 = new Passenger("Korim", "Jatrabri",5);
            var passenger3 = new Passenger("Rohim", "Ashulia",6);
            var passenger4 = new Passenger("Sajjad", "Purbachol",7);
            var passenger5 = new Passenger("Majed", "Singboard",2);

            var cab1 = new Cab("Cab 1", 9, true);
            var cab2 = new Cab("Cab 2", 10, true);
            var cab3 = new Cab("Cab 3", 8, false);
            var cab4 = new Cab("Cab 4", 11, true);

            callcenter.Register(cab1);
            callcenter.Register(cab2);
            callcenter.Register(cab3);
            callcenter.Register(cab4);

            callcenter.BookCab(passenger1);
            callcenter.BookCab(passenger2);
            callcenter.BookCab(passenger3);
            callcenter.BookCab(passenger4);
            callcenter.BookCab(passenger5);

            Console.ReadKey();
        }
    }
}
