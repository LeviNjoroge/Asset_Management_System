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
            field(Employee_No; Rec.Employee_No)
            {
                ApplicationArea = All;
                Editable = false;
            }
            group(General)
            {
                field("Full name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec.Phone_Number)
                {
                    ApplicationArea = All;
                }
                field("Email Address"; Rec.Email_Address)
                {
                    ApplicationArea = All;
                }
                field("National ID or Passport Number"; Rec."National_ID/Passport")
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