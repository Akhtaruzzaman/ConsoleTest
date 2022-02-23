// See https://aka.ms/new-console-template for more information

var emailVisitor =new EmailVisitor();
var textVisitor =new TextVisitor();

var notification_1 =new InvoiceNotificationSender();
notification_1.Accept(emailVisitor);
notification_1.Accept(textVisitor);
notification_1.Send("Invoice");

var notification_2 =new MarketingNotificationSender();
notification_2.Accept(emailVisitor);
notification_2.Accept(textVisitor);
notification_2.Send("Marketing");


Console.ReadKey();
