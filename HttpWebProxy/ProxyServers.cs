using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HttpWebProxy
{
    public class ProxyServers: IProxyServers
    {
        public List<ServerDto> Servers { get; set; }
        public ProxyServers()
        {
            this.Servers = new List<ServerDto>();
            this.Servers.AddRange(new List<ServerDto> {
                new ServerDto { Protocols = "http", Ip = "39.107.33.254", Port = "8090", Country = "CN" },
                new ServerDto { Protocols = "http", Ip = "139.255.21.74", Port = "8080", Country = "ID" },
                new ServerDto { Protocols = "http", Ip = "117.160.250.132", Port = "8081", Country = "CN" },
                new ServerDto { Protocols = "http", Ip = "154.53.59.250", Port = "3128", Country = "US" },
            });
        }
        public List<ServerDto> GetAllProxyServer()
        {
            return this.Servers;
        }
    }
}
