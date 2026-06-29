codeunit 50303 "Send Notification"
{
    trigger OnRun()
    begin

    end;

    procedure RegistrationNotification(EmployeeID: Integer)
    var
        Employee: Record "Employees Table";
        EmailMgt: Codeunit "Email Management";
    begin
        if Employee.Get(EmployeeID) then begin
            Message('Sending to %1', Employee.Email_Address);
            EmailMgt.SendNotification(
                Employee.Email_Address,
                'Successful Registration',
                'Hello ' + Employee."Employee Name" +
                ',You have successfully registered in the Asset Management System. You can now borrow items from the system.');
        end else
            Error('Employee not found.');
    end;

    procedure BorrowRequestNotification(EmployeeID: Integer; ReturnDate: Date)
    var
        Employee: Record "Employees Table";
        EmailMgt: Codeunit "Email Management";
    begin

        // Send confirmation email
        if Employee.Get(EmployeeID) then
            EmailMgt.SendNotification(
                Employee.Email_Address,
                'Borrow Request Successfully Registered',
                StrSubstNo(
                    'Dear %1,' +
                    '\You have successfully registered a request to borrow an item.' +
                    '\Return Date: %2' +
                    '\Current Status: Pending' +
                    '\Thank you for using the Asset Management System.',
                    Employee."Employee Name",
                    Format(ReturnDate)));
    end;

    procedure CheckDateAndSendEmail()
    var
        Employee: Record "Employees Table";
        Lending: Record "Lending Table";
        Returns: Record Return_Table;
        EmployeeID1: Integer;
        EmployeeIDN: Integer;
        EmployeeID: Integer;
        LendingDate: Date;
        LendingId: Integer;
        ReturnDate: Date;
        ActualReturnDate: Date;
        Email: Codeunit "Email Management";
        EmployeeEmail: Text;
    begin
        EmployeeID1 := Employee.GetRangeMin(Employee_No);
        EmployeeIDN := Employee.GetRangeMax(Employee_No);
        for EmployeeID := EmployeeID1 to EmployeeIDN do begin
            if Employee.Get(EmployeeID) then
                EmployeeEmail := Employee.Email_Address;
            if Lending.Get(EmployeeID) then // this will prolly not work
                LendingDate := Lending."Date of Issue";
            ReturnDate := Lending."Date of Return";
            LendingId := Lending.LendingID;
            if Returns.Get(LendingId) then // this will prolly not work
                ActualReturnDate := Returns.Date_Of_Return;
            if ReturnDate < CurrentDateTime.Date then begin
                Email.SendNotification(EmployeeEmail, 'Item overdue!', 'The item you had borrowed is overdue, please return it to the storekeeper as soon as possible!');
            end;
        end;
    end;

    var
        myInt: Integer;
}