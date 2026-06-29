// page 50349 "AssetMan Role Center"
// {
//     PageType = RoleCenter;
//     Caption = 'Asset Management System';

//     layout
//     {
//         area(RoleCenter)
//         {
//             part(Headline; "Headline RC Administrator")
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//             part(Activities; "Activity Step Subform")
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//             part("Help And Chart Wrapper"; "Help And Chart Wrapper")
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//             part("Report Inbox Part"; "Report Inbox Part")
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//             // part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
//             // {
//             //     ApplicationArea = Basic, Suite;
//             // }
//         }
//     }

//     actions
//     {
//         area(Creation)
//         {
//             action("Asset Management SystemDocumentCard")
//             {
//                 RunPageMode = Create;
//                 Caption = 'Asset Management SystemDocumentCard';
//                 ToolTip = 'Add some tooltip here';
//                 Image = New;
//                 RunObject = page "Lending List";
//                 ApplicationArea = Basic, Suite;
//             }
//         }
//         area(Processing)
//         {
//             group(New)
//             {
//                 action("Asset Management SystemMasterData")
//                 {
//                     RunPageMode = Create;
//                     Caption = 'Asset Management SystemMasterData';
//                     ToolTip = 'Register new Asset Management SystemMasterData';
//                     RunObject = page "Lending Registration Card";
//                     Image = DataEntry;
//                     ApplicationArea = Basic, Suite;
//                 }
//             }
//             group("Asset Management SystemSomeProcess Group")
//             {
//                 action("Asset Management SystemSomeProcess")
//                 {
//                     Caption = 'Asset Management SystemSomeProcess';
//                     ToolTip = 'Asset Management SystemSomeProcess description';
//                     Image = Process;
//                     // RunObject = Codeunit "Asset Management SystemSomeProcess";
//                     ApplicationArea = Basic, Suite;
//                 }
//             }
//             group("Asset Management System Reports")
//             {
//                 action("Asset Management SystemSomeReport")
//                 {
//                     Caption = 'Asset Management SystemSomeReport';
//                     ToolTip = 'Asset Management SystemSomeReport description';
//                     Image = Report;
//                     // RunObject = report "Asset Management SystemSomeReport";
//                     ApplicationArea = Basic, Suite;
//                 }
//             }
//         }
//         area(Reporting)
//         {
//             action("Asset Management SystemSReport")
//             {
//                 Caption = 'Asset Management SystemSomeReport';
//                 ToolTip = 'Asset Management SystemSomeReport description';
//                 Image = Report;
//                 // RunObject = report "Asset Management System Report";
//                 Promoted = true;
//                 PromotedCategory = Report;
//                 PromotedIsBig = true;
//                 ApplicationArea = Basic, Suite;
//             }

//         }
//         area(Embedding)
//         {
//             action("Asset Management SystemMasterData List")
//             {
//                 RunObject = page "Lending List";
//                 ApplicationArea = Basic, Suite;
//             }

//         }
//         area(Sections)
//         {
//             group(Setup)
//             {
//                 Caption = 'Setup';
//                 ToolTip = 'Overview and change system and application settings, and manage extensions and services';
//                 Image = Setup;

//                 action("Asset Management System Setup")
//                 {
//                     ToolTip = 'Setup Asset Management System';
//                     RunObject = Page "Item Card";
//                     ApplicationArea = Basic, Suite;

//                 }

//                 action("Assisted Setup")
//                 {
//                     ToolTip = 'Set up core functionality such as sales tax, sending documents as email, and approval workflow by running through a few pages that guide you through the information.';
//                     RunObject = Page "Assisted Setup";
//                     ApplicationArea = Basic, Suite;
//                 }
//                 action("Manual Setup")
//                 {
//                     ToolTip = 'Define your company policies for business departments and for general activities by filling setup windows manually.';
//                     RunObject = Page Item_List;
//                     ApplicationArea = Basic, Suite;
//                 }
//                 action("Service Connections")
//                 {
//                     ToolTip = 'Enable and configure external services, such as exchange rate updates, Microsoft Social Engagement, and electronic bank integration.';
//                     RunObject = Page "Service Connections";
//                     ApplicationArea = Basic, Suite;
//                 }
//             }
//         }
//     }

// }