using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatorPattern
{
    public interface ICab
    {
        string Name { get; }
        int CurrentLocation { get; }
        bool IsFree { get; }

        void Assign(string name, string address);
    }
    public class Cab : ICab
    {
        private readonly string _name;
        private readonly int _location;
        private readonly bool _free;
        public Cab(string name, int location, bool free)
        {
            _name = name;
            _location = location;
            _free = free;
        }
        public string Name => _name;
        public int CurrentLocation => _location;
        public bool IsFree => _free;

        public void Assign(string name, string address)
        {
            Console.WriteLine($"Cab {Name} assign to {name}, {address}");
        }
    }
}
