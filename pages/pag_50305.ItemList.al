page 50305 Item_List
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemsTable;
    CardPageId = 50306;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Item No."; Rec.Item_no)
                {
                    ApplicationArea = All;
                }
                field("Item Category"; Rec.Item_Category)
                {
                    ApplicationArea = All;
                }
                field("Item Name"; Rec.Item_Name)
                {
                    ApplicationArea = All;
                }
                field("Item Description"; Rec.Item_Description)
                {
                    ApplicationArea = All;
                }
                field("Value"; Rec.Value)
                {
                    ApplicationArea = All;
                }
                field("Quantity"; Rec.Quantity)
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