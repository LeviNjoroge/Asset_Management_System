page 50316 Return_List
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Return_Table;
    CardPageId = 50315;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
}