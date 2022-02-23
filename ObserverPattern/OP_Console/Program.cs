// See https://aka.ms/new-console-template for more information
var subject =new Subject("Raju", "");
var observer =new Observer(subject);
subject.UpdateStatus("Online");

var subject_2 =new Subject("Korim", "");
observer =new Observer(subject_2);
subject_2.UpdateStatus("Online");


subject.UpdateStatus("Offline");

Console.ReadKey();