codeunit 50304 "Lending Management"
{
    // Procedures in this codeunit include:
    // 1. ChangeStatus - which changes the status value in the item when item is returned --- triggered by the "Mark as returned" button in the returns table
    // 2. LendItem, ReturnItem - Update the number of items in stock
    // 3. 

    procedure UpdateStatus(LendingId: Integer): Boolean
    var
        LendingTable : Record "Lending Table";
    begin
        if LendingTable.Get(LendingId) then begin
            LendingTable.Status:= LendingTable.Status::Returned;
            LendingTable.Modify();
            exit(true);
            
        end else begin
            Error('Lending ID %1 not found!', LendingId);
            exit(false);
        end;
    end;

    procedure LendItem(ItemID: Integer; Quantity: Integer)
    var
        Items : Record ItemsTable;
    begin
        if Items.Get(ItemID) then
            if Items.Quantity >= Quantity then begin
                Items.Quantity := Items.Quantity- Quantity;
                Items.Modify();
                Message('Success!');
            end else begin
                Error('Not enough items in stock to fulfil request!');
            end;
    end;

    procedure ReturnItem(LendingID: Integer)
    var
        Items : Record ItemsTable;
        LendingTable : Record "Lending Table";
        ItemID : Integer;
        Quantity : Integer;
    begin
        if LendingTable.Get(LendingID) then begin
            ItemID := LendingTable.ItemID;
            Quantity := LendingTable.Quatity;
        end;
        if Items.Get(ItemID) then  begin
            Items.Quantity := Items.Quantity + Quantity;
            Items.Modify();
            Message('Success!');
        end;
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