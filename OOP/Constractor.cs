using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP
{
    class Constractor
    {
        public void Run()
        {
            DefaultConstructor defaultConstructor = new DefaultConstructor();
            Console.WriteLine("Default Constructor");
            Console.WriteLine("Id: {0}, Name: {1}, Address: {2}", defaultConstructor.Id, defaultConstructor.Name, defaultConstructor.Address);
            Console.WriteLine();

            DefaultConstructor parameterizedConstructor = new DefaultConstructor(1, "Korim", "Uddin");
            Console.WriteLine("Parameterized Constructor");
            Console.WriteLine("Id: {0}, Name: {1}, Address: {2}", defaultConstructor.Id, defaultConstructor.Name, defaultConstructor.Address);
            Console.WriteLine();

            PrivateConstractor.NestedPrivateConstractor privateConstractor = new PrivateConstractor.NestedPrivateConstractor();
            PrivateConstractor.IncreamentCounter();
            PrivateConstractor.IncreamentCounter();
            PrivateConstractor.IncreamentCounter();
            PrivateConstractor.DecreamentCounter();
            Console.WriteLine("Private Constructor");
            Console.WriteLine("Counter: {0}", PrivateConstractor.GetCounter());
            Console.WriteLine();
        }
    }
    public class PrivateConstractor
    {
        private static int Counter;
        private PrivateConstractor()
        {
            Counter = 10;
        }
        public PrivateConstractor(int CounterValue)
        {
            Counter = CounterValue;
        }
        public static int GetCounter()
        {
            return Counter;
        }
        public static void IncreamentCounter()
        {
            Counter++;
        }
        public static void DecreamentCounter()
        {
            Counter--;
        }
        public class NestedPrivateConstractor
        {
            public void Test()
            {
                //internal instance
                PrivateConstractor privateConstractor = new PrivateConstractor();
            }
        }
    }
    public class DefaultConstructor
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        //default constractor
        public DefaultConstructor()
        {
            Name = "Raju";
        }
        //default distructor
        ~DefaultConstructor()
        {
            Name = "Korim";
        }
        //parameterized constractor
        public DefaultConstructor(int id, string name, string address)
        {
            this.Id = id;
            this.Name = name;
            this.Address = address;
        }
    }
}
