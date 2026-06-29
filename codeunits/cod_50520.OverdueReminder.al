codeunit 50320 "Overdue Reminder Job"
{
    Subtype = Normal;

    trigger OnRun()
    var
        LendingManagement: Codeunit "Lending Management";
    begin
        LendingManagement.SendOverdueReminders();
    end;
}