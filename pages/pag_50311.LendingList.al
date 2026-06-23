page 50311 "Lending List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Lending Table";
    CardPageId = "Lending Registration Card";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(LendingID; Rec.LendingID)
                {
                    ApplicationArea = All;
                }
                field(EmployeeID; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                }
                field(ItemID; Rec.ItemID)
                {
                    ApplicationArea = All;
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
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
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