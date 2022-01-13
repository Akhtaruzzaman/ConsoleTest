using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatorPattern
{
    public interface ICabCallCenter
    {
        public void Register(ICab cab);
        public void BookCab(IPassenger passenger);
    }
    public class CabCallCenter : ICabCallCenter
    {
        private readonly Dictionary<string, ICab> cabs = new Dictionary<string, ICab>();
        public void Register(ICab cab)
        {
            if (!cabs.ContainsValue(cab))
            {
                cabs.Add(cab.Name, cab);
            }
        }
        public void BookCab(IPassenger passenger)
        {
            foreach (var cab in cabs.Values.Where(_=>_.IsFree))
            {
                if (IsWithinClosedRedius(cab.CurrentLocation, passenger.Location))
                {
                    cab.Assign(passenger.Name, passenger.Address);
                    passenger.Acknoledge(cab.Name);
                }
            }
        }
        private bool IsWithinClosedRedius(int cabLocation, int passengerLocation) => Math.Abs(cabLocation - passengerLocation) < 5;
    }
}
