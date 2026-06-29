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
        area(Promoted)
        {
            group(Employees)
            {
                // view employee list, add employee
                actionref("Register Employee"; EmployeesCard) { }
                actionref("View Employees list"; EmployeesList) { }
            }
            group(Items)
            {
                // view and add items
                actionref("Items Registation"; ItemsCard) { }
                actionref("Items List"; ItemsList) { }

            }
            group(Lending)
            {
                // apply for lendinga and view lendings list
                actionref(Lending_Card; LendingsCard) { }
                actionref(Lending_List; LendingsList) { }
            }
            group(Returns)
            {
                // apply for an item return and view returns list
                actionref("Return Item"; ReturnsCard) { }
                actionref(ReturnList; ReturnsList) { }
            }
        }
        area(Navigation)
        {
            action(EmployeesCard)
            {
                Image = Employee;
                trigger OnAction()
                begin
                    varEmployeesCard.Run();
                end;
            }
            action(EmployeesList)
            {
                Image = EmployeeAgreement;
                trigger OnAction()
                begin
                    varEmployeesList.Run();
                end;
            }
            action(ItemsCard)
            {
                image = Item;
                trigger OnAction()
                begin
                    varItemReg.Run();
                end;
            }
            action(ItemsList)
            {
                Image = List;
                trigger OnAction()
                begin
                    varItemList.Run();
                end;
            }
            action(LendingsCard)
            {
                image = Card;
                trigger OnAction()
                begin
                    varLendingReg.Run();
                end;
            }
            action(LendingsList)
            {
                image = List;
                trigger OnAction()
                begin
                    varLendingList.Run();
                end;
            }
            action(ReturnsCard)
            {
                image = ReturnShipment;
                trigger OnAction()
                begin
                    varReturnsCard.Run();
                end;
            }
            action(ReturnsList)
            {
                image = List;
                trigger OnAction()
                begin
                    varReturnsList.Run();
                end;
            }
        }
    }

    var
        varEmployeesCard: Page "Employee Registration Card";
        varEmployeesList: Page "Employees List";
        varItemReg: Page Item_Card;
        varItemList: Page Item_List;
        varLendingReg: Page "Lending Registration Card";
        varLendingList: Page "Lending List";
        varReturnsCard: Page Return_CardPage;
        varReturnsList: Page Return_List;

}