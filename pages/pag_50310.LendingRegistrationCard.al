page 50310 "Lending Registration Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Lending Table";
    
    layout
    {
        area(Content)
        {
            // group(General)
            // {
                field(LendingID; Rec.LendingID)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                    TableRelation = "Employees Table";
                }
                
                field(ItemID; Rec.ItemID)
                {
                    ApplicationArea = All;
                    TableRelation = ItemsTable;
                }
                field(Quatity; Rec.Quatity)
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
            // }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}