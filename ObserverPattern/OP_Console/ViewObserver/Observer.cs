public class Observer{
    public Observer(ISubject subject)
    {
        subject.UserChanged += Subject_UserStatus_Change;
    }

    private void Subject_UserStatus_Change(User obj)
    {
        Console.WriteLine($"Name:{obj.Name} is {obj.Status}");
    }
}