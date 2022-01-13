using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceLearn
{
    public class MultipleInterface
    {
        public void Execute()
        {
            List<IRead> read = new List<IRead>();
            List<IWrite> write = new List<IWrite>();
        }
    }
    public interface IWrite
    {
        string Title { get; set; }
        void Write();
    }
    public interface IRead
    {
        string Title { get; set; }
        void Read();
    }
    public class SqlRead : IRead
    {
        public string Title { get; set; }
        public void Read()
        {
            Console.WriteLine($"Read operation Executed");
        }
    }
    public class SqlReadWrie : IRead, IWrite
    {
        public string Title { get; set; }
        public void Read()
        {
            Console.WriteLine($"Read operation Executed");
        }

        public void Write()
        {
            Console.WriteLine($"Write operation Executed");
        }
    }
}
