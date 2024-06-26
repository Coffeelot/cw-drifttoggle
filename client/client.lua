local QBCore = exports['qb-core']:GetCoreObject()
local useDebug = Config.Debug

local function quickToggleDriftMode(vehicle, on)
    SetDriftTyresEnabled(vehicle, on)
end

--[[ Commands ]]--
RegisterCommand("+toggleDrift", function()
    local Player = PlayerPedId()
    local vehicle = GetVehiclePedIsUsing(Player)
    local isOn = GetDriftTyresEnabled(vehicle)
    if vehicle ~= 0 then
        local class = GetVehicleClass(vehicle)
        if class == 8 or class == 21 or class == 16 or class == 15 or class == 14 or class == 13 then return end
        if useDebug then QBCore.Functions.Notify('Drift mode on', 'success') end
        quickToggleDriftMode(vehicle, true)
    end
end, false)

RegisterCommand("-toggleDrift", function()
    local Player = PlayerPedId()
    local vehicle = GetVehiclePedIsUsing(Player)
    local isOn = GetDriftTyresEnabled(vehicle)
    if vehicle ~= 0 then
        local class = GetVehicleClass(vehicle)
        if class == 8 or class == 21 or class == 16 or class == 15 or class == 14 or class == 13 then return end
        if useDebug then QBCore.Functions.Notify('Drift mode off', 'error') end
        quickToggleDriftMode(vehicle, false)
    end
end, false)

RegisterKeyMapping("+toggleDrift", "Drift (hold)", "keyboard", Config.DefaultButton)

local QBCore = exports['qb-core']:GetCoreObject()
local useDebug = Config.Debug

local function quickToggleDriftMode(vehicle, on)
    SetDriftTyresEnabled(vehicle, on)
end

--[[ Commands ]]--
    RegisterCommand("+toggleDrift", function()
        local Player = PlayerPedId()
        local vehicle = GetVehiclePedIsUsing(Player)
        local isOn = GetDriftTyresEnabled(vehicle)
        if vehicle ~= 0 then
            local class = GetVehicleClass(vehicle)
            if class == 8 or class == 21 or class == 16 or class == 15 or class == 14 or class == 13 then return end
            if useDebug then QBCore.Functions.Notify('Drift mode on', 'success') end
            quickToggleDriftMode(vehicle, true)
        end
    end, false)

    RegisterCommand("-toggleDrift", function()
        local Player = PlayerPedId()
        local vehicle = GetVehiclePedIsUsing(Player)
        local isOn = GetDriftTyresEnabled(vehicle)
        if vehicle ~= 0 then
            local class = GetVehicleClass(vehicle)
            if class == 8 or class == 21 or class == 16 or class == 15 or class == 14 or class == 13 then return end
            if useDebug then QBCore.Functions.Notify('Drift mode off', 'error') end
            quickToggleDriftMode(vehicle, false)
        end
    end, false)

    RegisterKeyMapping("+toggleDrift", Config.NameOfButton, "keyboard", Config.DefaultButton)

local function driftIsOn()
    local vehicle = GetVehiclePedIsUsing(PlayerPedId())
    if vehicle then
        return(GetDriftTyresEnabled(vehicle))
    end
    return false
end exports('driftIsOn', driftIsOn)