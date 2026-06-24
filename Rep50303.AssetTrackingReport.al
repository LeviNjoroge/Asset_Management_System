report 50303 "Asset Tracking Report"
{
    ApplicationArea = All;
    Caption = 'Asset Tracking Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'AssetTrackingReport.xlsx';
    dataset
    {
        dataitem(LendingTable; "Lending Table")
        {
            column(DateofIssue; "Date of Issue")
            {
            }
            column(DateofReturn; "Date of Return")
            {
            }
            column(EmployeeID; EmployeeID)
            {
            }
            column(ItemID; ItemID)
            {
            }
            column(LendingID; LendingID)
            {
            }
            column(Quatity; Quatity)
            {
            }
            column(Status; Status)
            {
            }
            dataitem(EmployeesTable; "Employees Table")
            {
                DataItemLink = Employee_No = field(EmployeeID);
                column(EmployeeName; "Employee Name")
                {
                }
                column(Department; Department)
                {
                }
                column(PhoneNumber; Phone_Number)
                {
                }
                column(EmailAddress; Email_Address)
                {
                }

            }
            dataitem(ItemsTable; ItemsTable)
            {
                DataItemLink = Item_no = field(ItemID);
                column(ItemName; Item_Name)
                {
                }
                column(ItemDescription; Item_Description)
                {
                }

            }
            dataitem(ReturnTable; Return_Table)
            {
                DataItemLink = Lending_ID = field(LendingID);
                column(ConditionOfItem; Condition_Of_Item)
                {
                }
                column(Actual_Date_Of_Return; Date_Of_Return)
                {
                }
                column(Description; Description)
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
