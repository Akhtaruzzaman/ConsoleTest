using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using Models.DataAccess;
using Models.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace RazorApp.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly PeopleContext db;
        public List<Person> people;
        public IndexModel(ILogger<IndexModel> logger, PeopleContext db)
        {
            _logger = logger;
            this.db = db;
            this.people = new List<Person>();
        }

        public void OnGet()
        {
            people = db.Person.ToList();
            LoadSampleData();
        }
        private void LoadSampleData()
        {
            if (db.Person.Count() == 0)
            {
                string file = System.IO.File.ReadAllText("personDummyData.json");
                var person = JsonSerializer.Deserialize<List<Person>>(file);
                db.AddRange(person);
                db.SaveChanges();
            }
        }
    }
}
