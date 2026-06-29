codeunit 50302 "Email Management"
{
    trigger OnRun()
    begin

    end;

    procedure SendNotification(Recipient: Text; Subject: Text; Body: Text)
    var
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";
    begin

        EmailMessage.Create(Recipient, Subject, Body, false);

        Email.Send(EmailMessage, Enum::"Email Scenario"::Default);
    end;

    var
        myInt: Integer;
}