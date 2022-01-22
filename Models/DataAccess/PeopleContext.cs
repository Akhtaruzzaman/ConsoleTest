using Microsoft.EntityFrameworkCore;
using Models.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DataAccess
{
    public class PeopleContext : DbContext
    {
        public PeopleContext(DbContextOptions options) : base(options)
        {

        }
        public DbSet<Person> Person { get; set; }
        public DbSet<Adress> Adresses { get; set; }
        public DbSet<Email> EmailAdresses { get; set; }
    }
}
