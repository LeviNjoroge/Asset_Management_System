codeunit 50305 "Employee Helper"
{
    // save the emp id in the table
    // procedure SaveEmpID(CurrID : Integer)
    // var
    //    Employee: Record "Employees Table";
    // begin
    //     if Employee.Get(CurrID) then
    //         Employee.Employee_No := GenerateEmployeeID();
    //         Employee.Modify();
    // end;

    // // generate the emp id
    // procedure GenerateEmployeeID(): Code[20]
    // var
    //     Employee: Record "Employees Table";
    //     EmployeeCount: Integer;
    // begin
    //     // Sort by Registration Date to find the last Employee
    //     Employee.SetCurrentKey(SystemCreatedAt);

    //     // Count existing Employees (or start at 1 if none exist)
    //     if Employee.FindLast() then
    //         EmployeeCount := Employee.Count + 1
    //     else
    //         EmployeeCount := 1;

    //     // Build and return the ID string
    //     // e.g., 'MEM-20260303-0001'
    //     exit('EMP-' + Format(Today, 0, '<Year4><Month,2><Day,2>') + '-' + Format(EmployeeCount, 0, '<Integer,2>'));
    // end;
}