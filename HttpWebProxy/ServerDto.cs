using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HttpWebProxy
{
    public class ServerDto
    {
        public string? Protocols { get; set; }
        public string Ip { get; set; }
        public string Port { get; set; }
        public string? Country { get; set; }
        public string GetProxyServer()
        {
            return $"{this.Protocols ?? "http"}://{this.Ip}:{this.Port}";
        }
    }
}
