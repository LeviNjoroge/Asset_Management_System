page 50302 "Employees List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Employees Table";
    CardPageId = 50301;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Employee_No;Rec.Employee_No)
                {
                    ApplicationArea = All;
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
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}