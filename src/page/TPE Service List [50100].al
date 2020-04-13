page 50100 "TPE Service List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TPE Service";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("App Name"; "App Name")
                {
                    ApplicationArea = All;
                }
                field("App Id"; "App Id")
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
            action(Discover)
            {
                ApplicationArea = All;
                Image = ViewPage;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    DeleteAll();
                    ServiceMgmt.OnDiscovery();
                end;
            }

            action("Init")
            {
                ApplicationArea = All;
                Image = ViewPage;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ServiceMgmt.CallInit(Rec);
                end;
            }
        }
    }

    var
        ServiceMgmt: Codeunit "TPE Service Mgmt.";
}