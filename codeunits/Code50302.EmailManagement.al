codeunit 50302 "Email Management"
{
    trigger OnRun()
    begin
        
    end;
    
    procedure SendNotification(Recepient: Text; Subject: Text; Body: Text)
    var
        Email : Codeunit Email;
        EmailMessage : Codeunit "Email Message";
    begin
        EmailMessage.Create(Recepient, Subject, Body, false);
        Email.Send(EmailMessage);
        // use case:
        // CodeUnit.SendNotification(example@gmail.com, 'ExampleSubject', 'Example Body')
    end;

    var
        myInt: Integer;
}