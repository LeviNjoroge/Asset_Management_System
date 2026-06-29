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
            // column("Borrowers_Name"; dataRetreaval.GetEmployeeName(EmployeeID)){}
            column(ItemID; ItemID)
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
                column(Lending_ID; Lending_ID)
                {
                }
                column(Date_Of_Return; Date_Of_Return)
                {
                }
                column(Condition_Of_Item; Condition_Of_Item)
                {
                }
            }
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
        dataRetreaval : Codeunit DataRetreaval;
}
