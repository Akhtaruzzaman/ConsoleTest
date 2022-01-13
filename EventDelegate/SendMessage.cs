using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventDelegate
{
    public class SendMessage
    {
        public void OnVideoEncoded(object source, VideoEventArgs e)
        {
            Console.WriteLine($"Message: {e.Video.Title} Sending an email....");
        }
        public void OnVideoEncoded2(object source, VideoEventArgs e)
        {
            Console.WriteLine($"Message 2: {e.Video.Title} Sending an email....");
        }
    }
}
