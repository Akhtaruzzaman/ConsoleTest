using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Jobs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotnetLinqBoost
{
    //[MemoryDiagnoser(false)]
    [SimpleJob(RuntimeMoniker.Net60)]
    [SimpleJob(RuntimeMoniker.Net70)]
    public class Banchmarks
    {
        [Params(100)]
        public int size { get; set; }
        private IEnumerable<int> _items;
        [GlobalSetup]
        public void Setup()
        {
            _items = Enumerable.Range(1, 100).ToArray();
        }
        [Benchmark]
        public int max() => _items.Max();
        [Benchmark]
        public int min() => _items.Min();
        [Benchmark]
        public double avg() => _items.Average();
        [Benchmark]
        public int sum() => _items.Sum();
    }
}
