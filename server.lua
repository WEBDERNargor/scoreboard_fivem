ESX=nil
Script=GetCurrentResourceName()
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent(Script..":getplyerdata")
AddEventHandler(Script..":getplyerdata", function()
    local object={}
    local xPlayer = ESX.GetPlayerFromId(source)
    object.name=xPlayer.getName()
    object.job=xPlayer.getJob()
    object.id=source
    TriggerClientEvent(Script..":sendplayerdata", source,object )
end)