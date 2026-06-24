report 50315 "Return Report"
{
    ApplicationArea = All;
    Caption = 'Return Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'ReturnReport.rdl';
    dataset
    {
        dataitem(Return_Table; Return_Table)
        {
            column(Condition_Of_Item; Condition_Of_Item)
            {
            }
            column(Date_Of_Return; Date_Of_Return)
            {
            }
            column(Description; Description)
            {
            }
            dataitem(LendingTable; "Lending Table")
            {
                DataItemLink = LendingID = field(Lending_ID);
                column(ItemID; ItemID)
                {
                }
                column(Quatity; Quatity)
                {
                }
                column(DateOfIssue; "Date of Issue")
                {
                }
                column(DateOfReturn; "Date of Return")
                {
                }
            }
            column(Lending_ID; Lending_ID)
            {
            }
            column(Return_ID; Return_ID)
            {
            }
            column(SystemCreatedAt; SystemCreatedAt)
            {
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
}
