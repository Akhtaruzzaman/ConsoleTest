using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RazorApp.Service
{
    public class EmployeeService : IEmployeeService
    {
        public EmployeeService()
        {
        }
        public List<Employee> Employees()
        {
            var employee = new List<Employee>();

            employee.Add(new Employee(1, "Raju", "Dhaka"));
            employee.Add(new Employee(2, "Riaz", "Dhaka"));
            employee.Add(new Employee(3, "Harun", "Dhaka"));

            return employee;
        }
    }
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public Employee(int id, string name, string adress)
        {
            this.Id = id;
            this.Name = name;
            this.Address = adress;
        }
    }
}
