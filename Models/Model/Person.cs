using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Model
{
    public class Person
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }
        public List<Adress> Adresses { get; set; } = new List<Adress>();
        public List<Email> EmailAdresses { get; set; } = new List<Email>();
    }
}
