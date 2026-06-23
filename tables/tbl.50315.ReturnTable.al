table 50315 Return_Table
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Return_ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Lending_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Date_Of_Return; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Condition_Of_Item; option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Good,Damaged,Severely_Damaged,Lost;
        }
        field(5; Description; Code[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Return_ID)
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