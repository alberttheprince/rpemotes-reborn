RegisterCommand("__nui", function()
    print("HIII")
    SetNuiFocus(not IsNuiFocused(), not IsNuiFocused())
end)