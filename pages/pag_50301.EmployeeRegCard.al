page 50301 "Employee Registration Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employees Table";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Employee_No; Rec.Employee_No)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Phone_Number; Rec.Phone_Number)
                {
                    ApplicationArea = All;
                }
                field(Email_Address; Rec.Email_Address)
                {
                    ApplicationArea = All;
                }
                field("National_ID/Passport"; Rec."National_ID/Passport")
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