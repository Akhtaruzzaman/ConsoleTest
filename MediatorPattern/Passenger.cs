using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatorPattern
{
    public interface IPassenger
    {
        int Location { get; }
        string Name { get; }
        string Address { get; }

        void Acknoledge(string name);
    }
    public class Passenger : IPassenger
    {
        private readonly string _name;
        private readonly string _address;
        private readonly int _location;
        public Passenger(string name, string address, int location)
        {
            _name = name;
            _address = address;
            _location = location;
        }
        public int Location => _location;
        public string Name => _name;
        public string Address => _address;
        public void Acknoledge(string name)
        {
            Console.WriteLine($"Passenger {Name} Cab {name}");
        }
    }
}
