page 50310 "Lending Registration Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Lending Table";
    Caption = 'Item lending card';
    
    layout
    {
        area(Content)
        {
            field(LendingID; Rec.LendingID)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            group(General)
            {
                field(Employee; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                    TableRelation = "Employees Table";
                }
                
                field(Item; Rec.ItemID)
                {
                    ApplicationArea = All;
                    TableRelation = ItemsTable;
                }
                field("No. of Items"; Rec.Quatity)
                {
                    ApplicationArea = All;
                }
                field("Date of Issue"; Rec."Date of Issue")
                {
                    ApplicationArea = All;
                }
                field("Date of Return"; Rec."Date of Return")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(Promoted)
        {
            actionref("Register Employee"; EmployeesCard){}
            actionref("Return Item";ReturnsCard){}
        }
        area(Navigation)
        {
            action(EmployeesCard)
            {
                Image = Employee;
                trigger OnAction()
                begin
                    varEmployeesCard.Run();
                end;
            }
            action(ReturnsCard)
            {
                Image = ReturnShipment;
                trigger OnAction()
                begin
                    varReturnsCard.Run();
                end;
            }
        }
    }

    var
        varLendingsReport : Report Lendings_Report;
        varEmployeesCard : Page "Employee Registration Card";
        varReturnsCard : Page Return_CardPage;
}