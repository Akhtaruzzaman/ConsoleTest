using System;

namespace ConstractorLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            var data = Raju.GetData();

            Console.ReadKey();
        }
    }

    public class Raju
    {
        private Raju()
        {

        }
        public static string GetData()
        {
            return "Data";
        }
    }
    public class Parent
    {
        private Parent()
        {

        }
    }
    public class Colleague
    {

    }
}
