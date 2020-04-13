interface "TPE IService"
{
    local procedure OnDiscovery();
    local procedure OnGetCodeunit(AppId: guid; var ServiceCU: Interface "TPE IService");
    procedure ShowInitMessage();
}