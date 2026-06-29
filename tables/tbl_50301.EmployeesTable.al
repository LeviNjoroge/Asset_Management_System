table 50301 "Employees Table"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Employees List";
    DrillDownPageId = "Employees List";

    fields
    {
        field(1; "Employee_No"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            MinValue = 1;
        }
        field(2; "Employee Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Department; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Dev", "Infra", "Mobility", "Portals", "Functionals", "Admin"; 
        }
        field(4; Phone_Number; Text[13])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(5; Email_Address; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
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
        key(FK1; "Employee Name"){}
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