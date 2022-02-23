public class Subject:ISubject
{
    private readonly User user;
    public event Action<User> UserChanged;
    public Subject(string username, string status)
    {
        user = new User { Name = username, Status = status };
    }
    public void UpdateStatus(string status){
        user.Status=status;
        if(UserChanged!=null) UserChanged(user);
    }
}