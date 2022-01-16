using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP
{
    class ClassAndObject
    {
        public void Run()
        {
            Student student = new Student { Id = 1, Name = "Raju", Address = "Dhaka" };
            student.ShowDetails();
        }
    }
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public void ShowDetails()
        {
            Console.WriteLine("Student Information");
            Console.WriteLine("Id: {0}, Name: {1}, Address: {2}", Id, Name, Address);
        }
    }
}
