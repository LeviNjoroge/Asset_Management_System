report 50300 Lendings_Report
{
    ApplicationArea = All;
    Caption = 'Lendings_Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'lendings_layout.rdl';

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
            column(ItemID; ItemID)
            {
            }
            dataitem(ItemsTable;ItemsTable){
                DataItemLink = Item_no = field(ItemID);
                column(Item_Name;Item_Name){}
                column(Item_Description;Item_Description){}
            }
            column(DateofIssue; "Date of Issue")
            {
            }
            column(DateofReturn; "Date of Return")
            {
            }
            column(SystemCreatedAt; SystemCreatedAt)
            {
            }
            column(SystemModifiedAt; SystemModifiedAt)
            {
            }
            dataitem(Employee_table; "Employees Table")
            {
                DataItemLink = Employee_No = field(EmployeeID);
                column(Employee_Name;"Employee Name")
                {   
                }
                column(Department;Department){}
                column(Email_Address;Email_Address)
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
}
