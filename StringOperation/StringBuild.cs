using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringOperation
{
    class StringBuild
    {
        public void StBld()
        {
            StringBuilder sb = new StringBuilder();
            var iini = 80;
            sb.AppendLine("Hello world @iini");
            sb.AppendLine("Hello world 2");
            sb.AppendLine("Hello world 3");
            sb.AppendLine("Hello world 4");

            StringBuilder s = new StringBuilder("Your total amount is ");

            // using the method
            // StringBuilder sb = new StringBuilder();
            s.AppendFormat("{0}----{1}", "sdf", "s");
            Console.WriteLine(s);
            Console.WriteLine(sb);
        }
    }
}
