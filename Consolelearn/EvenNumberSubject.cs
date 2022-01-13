using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive.Subjects;
using System.Text;
using System.Threading.Tasks;

namespace ReactiveFuntions
{
    class EvenNumberSubject :IDisposable
    {
        private readonly Subject<int> subject = new();
        private readonly List<IDisposable> disposables = new();

        public void Dispose()
        {
            subject.Dispose();
            foreach (var item in disposables)
            {
                item?.Dispose();
            }
        }
        public void Run()
        {
            Enumerable.Range(1, 100).Where(_ => _ % 2 == 0).ToList().ForEach(_ =>
            {
                subject.OnNext(_);
            });
        }
        public void Subscribe(Action<int> action)
        {
            disposables.Add(subject.Subscribe(action));
        }
    }
}
