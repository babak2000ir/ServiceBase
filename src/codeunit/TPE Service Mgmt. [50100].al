codeunit 50100 "TPE Service Mgmt."
{
    [BusinessEvent(true)]
    procedure OnDiscovery()
    begin
    end;

    [BusinessEvent(false)]
    procedure OnGetCodeunit(AppId: guid; var ServiceCU: Interface "TPE IService")
    begin
    end;

    procedure CallInit(pService: record "TPE Service")
    var
        lServiceCU: Interface "TPE IService";
    begin
        OnGetCodeunit(pService."App Id", lServiceCU);
        lServiceCU.ShowInitMessage();
    end;
}