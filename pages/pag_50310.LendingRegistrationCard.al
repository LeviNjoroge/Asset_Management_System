page 50310 "Lending Registration Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Lending Table";
    Caption = 'Item lending card';

    layout
    {
        area(Content)
        {
            field(LendingID; Rec.LendingID)
            {
                ApplicationArea = All;
                Editable = false;
            }
            group(General)
            {
                field(Employee; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                    TableRelation = "Employees Table";
                }

                field(Item; Rec.ItemID)
                {
                    ApplicationArea = All;
                    TableRelation = ItemsTable;
                }

                field("No. of Items"; Rec.Quatity)
                {
                    ApplicationArea = All;
                }
                field("Date of Issue"; Rec."Date of Issue")
                {
                    ApplicationArea = All;
                }
                field("Date of Return"; Rec."Date of Return")
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