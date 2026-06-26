page 50305 Item_List
{
    PageType = List;
    Caption = 'Items List';
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