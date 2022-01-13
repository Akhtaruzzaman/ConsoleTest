using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive.Disposables;
using System.Text;
using System.Threading.Tasks;

namespace ReactiveFuntions
{
    class EvenNumberOservable : IObservable<int>
    {
        public IDisposable Subscribe(IObserver<int> observer)
        {
            Enumerable.Range(1, 100).Where(_ => _ % 2 == 0).ToList().ForEach(_ =>
            {
                try
                {
                    observer.OnNext(_);
                }
                catch (Exception ex)
                {
                    observer.OnError(ex);
                }
            });
            return Disposable.Empty;
        }
    }
}
