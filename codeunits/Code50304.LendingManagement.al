codeunit 50304 "Lending Management"
{
    // Procedures in this codeunit include:
    // 1. ChangeStatus - which changes the status value in the item when item is returned --- triggered by the "Mark as returned" button in the returns table
    // 2. LendItem, ReturnItem - Update the number of items in stock
    // 3. 

    procedure UpdateStatus(LendingId: Integer): Boolean
    var
        LendingTable: Record "Lending Table";
        Employee: Record "Employees Table";
        EmailMgt: Codeunit "Email Management";
    begin
        if LendingTable.Get(LendingId) then begin
            LendingTable.Status := LendingTable.Status::Returned;
            LendingTable.Modify();

            // Send return confirmation email
            if Employee.Get(LendingTable.EmployeeID) then
                EmailMgt.SendNotification(
                    Employee.Email_Address,
                    'Asset Successfully Returned',
                    StrSubstNo(
                        'Dear %1,<br/><br/>' +
                        'Thank you for returning the borrowed asset.<br/><br/>' +
                        'Item ID: %2<br/>' +
                        'Return Date: %3<br/><br/>' +
                        'The asset has been successfully received and recorded in our system.<br/><br/>' +
                        'Regards,<br/>Asset Management System',
                        Employee."Employee Name",
                        LendingTable.ItemID,
                        Format(Today())
                    ));

            exit(true);

        end else begin
            Error('Lending ID %1 not found!', LendingId);
            exit(false);
        end;
    end;

    procedure LendItem(ItemID: Integer; Quantity: Integer)
    var
        Items: Record ItemsTable;
    begin
        if Items.Get(ItemID) then
            if Items.Quantity >= Quantity then begin
                Items.Quantity := Items.Quantity - Quantity;
                Items.Modify();
                Message('Success!');
            end else begin
                Error('Not enough items in stock to fulfil request!');
            end;
    end;

    procedure ReturnItem(LendingID: Integer)
    var
        Items: Record ItemsTable;
        LendingTable: Record "Lending Table";
        ItemID: Integer;
        Quantity: Integer;
    begin
        if LendingTable.Get(LendingID) then begin
            ItemID := LendingTable.ItemID;
            Quantity := LendingTable.Quatity;
        end;
        if Items.Get(ItemID) then begin
            Items.Quantity := Items.Quantity + Quantity;
            Items.Modify();
            Message('Success!');
        end;
    end;

    procedure SendOverdueReminders()
    var
        LendingTable: Record "Lending Table";
        Employee: Record "Employees Table";
        EmailMgt: Codeunit "Email Management";
    begin
        // Find all pending borrowings whose return date has passed
        LendingTable.Reset();
        LendingTable.SetRange(Status, LendingTable.Status::Pending);
        // LendingTable.SetFilter("Date of Return", '<%1', Today);
        LendingTable.SetFilter("Date of Return", '<%1',);

        if LendingTable.FindSet() then
            repeat
                // Update status to Overdue
                LendingTable.Status := LendingTable.Status::Overdue;
                LendingTable.Modify();

                // Send overdue reminder email
                if Employee.Get(LendingTable.EmployeeID) then
                    EmailMgt.SendNotification(
                        Employee.Email_Address,
                        'Overdue Asset Reminder',
                        StrSubstNo(
                            'Dear %1,<br/><br/>' +
                            'This is a reminder that the borrowed asset listed below is overdue.<br/><br/>' +
                            'Item ID: %2<br/>' +
                            'Expected Return Date: %3<br/><br/>' +
                            'Please return the asset as soon as possible.<br/><br/>' +
                            'Regards,<br/>Asset Management System',
                            Employee."Employee Name",
                            LendingTable.ItemID,
                            Format(LendingTable."Date of Return")
                        ));
            until LendingTable.Next() = 0;
    end;

    // test procedure
    // procedure ItemAdd1(ItemID: Integer)
    // var
    //     Items : Record ItemsTable;
    // begin
    //     if Items.Get(ItemID) then begin
    //         Items.Quantity := Items.Quantity+1;
    //             Items.Modify();
    //             Message('Success!');
    //     end;
    // end;
}