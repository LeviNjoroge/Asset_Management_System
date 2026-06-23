page 50306 Item_Card
{
    PageType = Card;
    Caption = 'Item Registration';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemsTable;

    layout
    {
        area(Content)
        {
            // group(GroupName)
            // {
            field("Item No."; Rec.Item_no)
            {
            }
            field("Item Category"; Rec.Item_Category)
            {

            }
            field("Item Name"; Rec.Item_Name)
            {

            }
            field("Item Description"; Rec.Item_Description)
            {

            }
            field("Value"; Rec.Value)
            {

            }
            field("Quantity"; Rec.Quantity)
            {

            }
        }
        // }
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