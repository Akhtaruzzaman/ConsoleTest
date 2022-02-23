internal class EmailVisitor : IVisitor{
    public void Visit(INotificationSender notificationSender){
          System.Console.WriteLine($"Setup Email");
    }
}
