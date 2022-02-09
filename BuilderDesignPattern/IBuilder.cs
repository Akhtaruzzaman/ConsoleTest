using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuilderDesignPattern
{
    public interface IBuilder
    {
        void BuilderPartA();
        void BuilderPartB();
        void BuilderPartC();
    }
}
