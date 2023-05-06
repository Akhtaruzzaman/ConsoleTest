namespace HttpWebProxy
{
    public interface IProxyServers
    {
        List<ServerDto> Servers { get; set; }
        List<ServerDto> GetAllProxyServer();
    }
}