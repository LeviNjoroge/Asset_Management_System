page 50306 Item_Card
{
    PageType = Card;
    Caption = 'Item Registration Card';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemsTable;

    layout
    {
        area(Content)
        {
            field("Item No."; Rec.Item_no)
            {
            }
            group("")
            {
            field("Item Category"; Rec.Item_Category)
            {

            }
            field("Name"; Rec.Item_Name)
            {

            }
            field("Description"; Rec.Item_Description)
            {

            }
            field("Value of Item"; Rec.Value)
            {

            }
            field("Quantity of items in stock"; Rec.Quantity)
            {

            }
        }
        }
    }
    
}