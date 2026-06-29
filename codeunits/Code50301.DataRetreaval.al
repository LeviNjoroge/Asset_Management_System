codeunit 50301 DataRetreaval
{
    trigger OnRun()
    begin
        
    end;
    
    procedure GetEmployeeName(EmployeeId : Integer) : Text[50]
    var
        Employee : Record "Employees Table";
        EmpName : Text[50];
    begin
        if Employee.Get(EmployeeId) then
            EmpName := Employee."Employee Name";
        // exit(Employee."Employee Name");
        exit(EmpName);
    end;

    procedure getEmployee(EmployeeId : Integer): Boolean
    var
        Employee: Record "Employees Table";
    begin
        exit(Employee.Get(EmployeeId));
    end;
}