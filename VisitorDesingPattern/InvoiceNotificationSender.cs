internal class InvoiceNotificationSender: INotificationSender{
    public InvoiceNotificationSender()
    {
        
    }
    public void Send(string message){
        System.Console.WriteLine($"Notification sent: {message}");
    }
    public void Accept(IVisitor visitor){
        visitor.Visit(this);
    }
}