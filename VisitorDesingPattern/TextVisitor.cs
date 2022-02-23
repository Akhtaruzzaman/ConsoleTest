internal class TextVisitor : IVisitor{
    public void Visit(INotificationSender notificationSender){
          System.Console.WriteLine($"Setup Text");
    }
}
