using System;
using System.Collections.Generic;
using System.Linq;

namespace DelegateLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Action<double>> list = new List<Action<double>>();
            list.Add(Sqare);
            list.Add(Cubic);
            var ienumtor = list.GetEnumerator();
            while (ienumtor.MoveNext())
            {
                ienumtor.Current(5);
            }

            Console.ReadKey();
        }
        public static void Sqare(double number) => Console.WriteLine(Math.Pow(number, 2));
        public static void Cubic(double number) => Console.WriteLine(Math.Pow(number, 3));
    }
    public class ActionClass
    {
      
    }
}
