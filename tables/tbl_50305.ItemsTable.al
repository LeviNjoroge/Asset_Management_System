table 50305 ItemsTable
{
    DataClassification = ToBeClassified;
    LookupPageId = Item_List;


    fields
    {
        field(1; Item_no; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            MinValue = 1;

        }
        field(2; Item_Category; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Item_Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Item_Description; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Value; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; Item_no)
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