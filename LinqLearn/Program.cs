using System;
using System.Collections.Generic;

namespace LinqLearn
{
    class Program
    {
        static void Main(string[] args)
        {
            int val = 17;
            var s = val % 4;
            if (s != 1 && s != 3)
            {
                Console.WriteLine("Invalid Format");
            }
            int trace = 2;
            for (int val_c = val; val_c > 0; val_c--)
            {
                if (trace == 0)
                {
                    trace = 2;
                }
                else
                {
                    for (int i = 1; i <= val_c; i++)
                    {
                        Console.Write("*");
                    }
                    Console.WriteLine("");
                    trace--;
                }
                val_c--;
            }
        }
    }
}
