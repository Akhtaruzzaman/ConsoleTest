using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace EventDelegate
{
    public class VideoEncoder
    {
        //step 1- define a delegate
        public delegate void VideoEncoderEventHandler(object source, VideoEventArgs args);

        //step 2- define an event base on that delegate
        public event VideoEncoderEventHandler VideoEncoded;

        //step 3- Raise the event
        public void Encode(Video video)
        {
            Console.WriteLine($"Video \"{video.Title}\" encoding....");
            Thread.Sleep(3000);
            OnVideoEncoded(video);
        }
        protected virtual void OnVideoEncoded(Video video)
        {
            if (VideoEncoded != null)
            {
                VideoEncoded(this, new VideoEventArgs { Video = video });
            }
        }
    }

}
