local LXFramework = exports['LXRM-core']:GetCoreObject()

-- Drink

LXFramework.Functions.CreateUseableItem("water", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:coffee", source, item.name)
    end
end)

-- EAT

LXFramework.Functions.CreateUseableItem("sandwich", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("bread", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("apple", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("chocolate", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("stew", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatStew", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("cooked_meat", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("cooked_fish", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

-- OTHER

LXFramework.Functions.CreateUseableItem("cigarette", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Smoke", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("cigar", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Smoke", source, item.name)
    end
end)

LXFramework.Functions.CreateUseableItem("binoculars", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    TriggerClientEvent("binoculars:Toggle", source)
end)

LXFramework.Functions.CreateUseableItem("dual", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    TriggerClientEvent("qb:Dual", source)
end)
-- bandage
LXFramework.Functions.CreateUseableItem("fieldbandage", function(source, item)
    local Player = LXFramework.Functions.GetPlayer(source)
    TriggerClientEvent('consumables:client:UseFieldBandage', source)
end)

RegisterNetEvent('consumables:server:removeitem', function(item, amount)
    local src = source
    local Player = LXFramework.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent("inventory:client:ItemBox", src, LXFramework.Shared.Items[item], "remove")
end)
