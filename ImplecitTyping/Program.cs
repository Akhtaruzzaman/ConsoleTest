using System;
using System.Linq;
using System.Reflection;

namespace AttributeLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            var types = from t in Assembly.GetExecutingAssembly().GetTypes()
                        where t.GetCustomAttributes<SampleAttribute>().Count() > 0
                        select t;

            foreach (var item in types)
            {
                Console.WriteLine($"Class: " + item.Name);
                foreach (var item2 in item.GetMethods())
                {
                    Console.WriteLine($"Proterties : " + item2.Name);
                }
            }

            Console.ReadKey();
        }
    }
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public class SampleAttribute : Attribute
    {
        public string Name { get; set; }
        public int Version { get; set; }
    }
    [Sample(Name = "John", Version = 1)]
    public class Test
    {
        [Sample]
        public void Sum(int a, int b)
        {
            Console.WriteLine($"Result is " + (a + b));
        }
    }
}
