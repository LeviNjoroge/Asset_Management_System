table 50303 "Lending Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; LendingID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            MinValue = 1;
        }
        field(2; EmployeeID; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "Employees Table";
            
        }
        // field(8; EmployeeName; Text[50])
        // {
        //     DataClassification = ToBeClassified;
        //     TableRelation = "Employees Table";
        // }
        field(3; ItemID; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = ItemsTable;
        }
        field(4; Quatity; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Date of Issue"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Date of Return"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Pending, Returned;
        }
    }
    
    keys
    {
        key(PK; LendingID)
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