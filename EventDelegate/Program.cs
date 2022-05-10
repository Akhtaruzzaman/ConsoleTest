using System;
using System.Threading.Tasks;
using System.Linq;
using System.Collections;

namespace EventDelegate
{
    class Program
    {
        static async Task Main(string[] args)
        {

            var vidoe = new Video { Title = "Video 1" };
            var mailservice = new SendEmail(); // subscriber
            var messageservice = new SendMessage(); // subscriber

            IVideoEncoder videoEncoder = new VideoEncoder(); //publisher
            videoEncoder.VideoEncoded += mailservice.OnVideoEncoded;
            videoEncoder.VideoEncoded += messageservice.OnVideoEncoded;
            videoEncoder.Encode(vidoe);

            //vidoe = new Video { Title = "Video 2" };
            //var videoEncoder2 = new VideoEncoder(); //publisher
            //videoEncoder2.VideoEncoded += mailservice.OnVideoEncoded;
            //videoEncoder2.VideoEncoded += messageservice.OnVideoEncoded;
            //videoEncoder2.Encode(vidoe);

            //vidoe = new Video { Title = "Video 3" };
            //var videoEncoder3 = new VideoEncoder(); //publisher
            //videoEncoder3.VideoEncoded += mailservice.OnVideoEncoded;
            //videoEncoder3.VideoEncoded += messageservice.OnVideoEncoded;
            //videoEncoder3.Encode(vidoe);


        }
    }

}
