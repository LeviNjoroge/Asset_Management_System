codeunit 50303 "Send Notification"
{
    trigger OnRun()
    begin
        
    end;

    local procedure CheckDateAndSendEmail()
    var
        Employee : Record "Employees Table";
        Lending : Record "Lending Table";
        Returns : Record Return_Table;
        EmployeeID1 : Integer;
        EmployeeIDN: Integer;
        EmployeeID : Integer;
        LendingDate : Date;
        LendingId : Integer;
        ReturnDate : Date;
        ActualReturnDate : Date;
        Email : Codeunit "Email Management";
        EmployeeEmail : Text;
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