page 50301 "Employee Registration Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employees Table";

    layout
    {
        area(Content)
        {
            field(Employee_No; Rec.Employee_No)
            {
                ApplicationArea = All;
                Editable = false;
            }
            group(General)
            {
                field("Full name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec.Phone_Number)
                {
                    ApplicationArea = All;
                }
                field("Email Address"; Rec.Email_Address)
                {
                    ApplicationArea = All;
                }
                field("National ID or Passport Number"; Rec."National_ID/Passport")
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
            action(CompleteRegistration)
            {
                image = Completed;
                trigger OnAction()
                var
                    sendnotification: Codeunit "Send Notification";
                begin
                    sendnotification.RegistrationNotification(Rec.Employee_No);
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