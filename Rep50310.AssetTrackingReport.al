report 50310 AssetTrackingReport
{
    ApplicationArea = All;
    Caption = 'AssetTrackingReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'assettrackingrep.xlsx';
    dataset
    {
        dataitem(Return_Table; Return_Table)
        {
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
            column(Description; Description)
            {
            }
            dataitem("Lending Table";"Lending Table")
            {
                DataItemLink = LendingID = field(Lending_ID);
                column(EmployeeID; EmployeeID)
                {
                }
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
        // create a codeunit or sth of sorts to populate the data for Emp name, dept, contact
        // such as select - from - where emp id = $
        // or item
    }
    var
        varDataRetrieval : Codeunit DataRetreaval;
}
