report 50310 "Asset Tracking Report"
{
    ApplicationArea = All;
    Caption = 'Asset Tracking Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'reportdemo.xlsx';
    dataset
    {
        dataitem(LendingTable; "Lending Table")
        {
            column(LendingID; LendingID)
            {
            }
            column(EmployeeID; EmployeeID)
            {
            }
            column(Borrower; varDataRetreaval.GetEmployeeName(EmployeeID)){}
            column(Departmaent;varDataRetreaval.GetDepartment(EmployeeID)){}
            column(ItemID; ItemID)
            {
            }
            column(ItemName;varDataRetreaval.GetItemName(ItemID))
            {
            }
            column(Quatity; Quatity)
            {
            }
            column(DateofIssue; "Date of Issue")
            {
            }
            column(DateofReturn; "Date of Return")
            {
            }
            column(Status; Status)
            {
            }
            dataitem(Return_Table; Return_Table)
            {
                DataItemLink = Lending_ID = field(LendingID);
                column(Return_ID; Return_ID)
                {
                }
                column(Actual_Date_Of_Return; Date_Of_Return)
                {
                }
                column(Condition_Of_Item; Condition_Of_Item)
                {
                }
                column(Description;Description)
                {   
                }
            }
            // trigger OnAfterGetRecord()
            // var
            //     dataRetreaval : Codeunit DataRetreaval;
            //     Employee : Record "Employees Table";
            //     Items : Record ItemsTable;
            // begin
            //     if dataRetreaval.getEmployee(EmployeeID) then begin
            //         EmployeeName := Employee."Employee Name";
            //         Departmaent := Employee.Department;
            //     end;
            //     if dataRetreaval.getItem(ItemID) then begin
            //         ItemName := Items.Item_Name;
            //     end;
            // end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }

    var
        varDataRetreaval : Codeunit DataRetreaval;

}
