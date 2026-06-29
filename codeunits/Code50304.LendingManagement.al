codeunit 50304 "Lending Management"
{
    // Procedures in this codeunit include:
    // 1. ChangeStatus - which changes the status value in the item when item is returned --- triggered by the "Mark as returned" button in the returns table
    // 2. 
    // 3. 

    procedure ChangeStatus(LendingId: Integer)
    var
        LendingTable : Record "Lending Table";
    begin
        if not LendingTable.Get(LendingId) then
            Error('Lending ID %1 not found!', LendingId);
        LendingTable.Status:= LendingTable.Status::Returned;
        LendingTable.Modify();
    end;
}