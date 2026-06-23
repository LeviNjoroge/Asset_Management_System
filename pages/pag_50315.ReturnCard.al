page 50315 Return_CardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Return_Table;
    Caption = 'Return Registration';

    layout
    {
        area(Content)
        {
            // group(GroupName)
            // {
            field("Return ID"; Rec.Return_ID)
            {
            }
            field("Lending ID"; Rec."Lending_ID")
            {
            }
            field("Return Date"; Rec."Date_Of_Return")
            {
            }
            field("Condition Of Item"; Rec."Condition_Of_Item")
            {
            }
            field("Description"; Rec."Description")
            {
            }
            // }
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