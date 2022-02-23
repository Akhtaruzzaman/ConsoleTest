public interface ISubject{
    void UpdateStatus(string status);
    event Action<User> UserChanged;
}