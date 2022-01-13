using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceLearn
{
    public class TestInterface
    {
        public void Execute()
        {
            var listofarea = new List<IAreaCalculator>();
            listofarea.Add(new Rectangle() { Title = "Rectangle", Height = 5, Width = 3 });
            listofarea.Add(new Circle() { Title = "Circle", Radius = 3 });
            listofarea.Add(new Rectangle() { Title = "Rectangle", Height = 10, Width = 12 });
            listofarea.Add(new Circle() { Title = "Circle", Radius = 5 });

            foreach (var item in listofarea)
            {
                Console.WriteLine($"Total Area for {item.Title} is " + item.GetArea());
            }
        }
    }
    public interface IAreaCalculator
    {
        string Title { get; set; }
        double GetArea();
    }
    public class Rectangle : IAreaCalculator
    {
        public double Height { get; set; }
        public double Width { get; set; }
        public string Title { get; set; }

        public double GetArea()
        {
            return Height * Width;
        }
    }
    public class Circle : IAreaCalculator
    {
        public double Radius { get; set; }
        public string Title { get; set; }
        public double GetArea()
        {
            return Radius * Radius * Math.PI;
        }
    }
}
