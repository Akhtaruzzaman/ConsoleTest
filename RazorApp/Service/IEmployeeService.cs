using System.Collections.Generic;

namespace RazorApp.Service
{
    public interface IEmployeeService
    {
        List<Employee> Employees();
    }
}