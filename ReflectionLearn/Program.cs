using System;
using System.Reflection;

namespace ReflectionLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            var assembly = Assembly.GetExecutingAssembly();
            Console.WriteLine(assembly.FullName);

            var sample = new Sample();
            var sampleType = typeof(Sample);
            var method = sampleType.GetMethod("Method1");
            method.Invoke(sample, null);

            Console.ReadKey();
        }
    }
    public class Sample
    {
        public void Method1()
        {
            Console.WriteLine("Method Run success");
        }
    }
}
