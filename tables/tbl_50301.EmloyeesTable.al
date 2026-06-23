table 50301 "Employees Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Employee_No"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            MinValue = 1;
        }
        field(2; "Employee Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Department; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Phone_Number; Code[13])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Email_Address; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "National_ID/Passport"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; "Employee_No")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}