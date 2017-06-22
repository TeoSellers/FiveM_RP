local coke = {
  [1] = {["name"] = "Champs de coke",["x"] = 2215.9030761719, ["y"] = 5577.4287109375, ["z"] = 53.830295562744, ["cost"] = 10000},
  [2] = {["name"] = "Traitement de coke #1",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [3] = {["name"] = "Traitement de coke #2",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [4] = {["name"] = "Vente de coke #1",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [5] = {["name"] = "Vente de coke #2",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000}
}

local meth = {
  [1] = {["name"] = "Champs de meth",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [2] = {["name"] = "Traitement de meth #1",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [3] = {["name"] = "Traitement de meth #2",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [4] = {["name"] = "Traitement de meth #3",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [5] = {["name"] = "Vente de meth",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000}
}

local weed = {
  [1] = {["name"] = "Champs de weed",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [2] = {["name"] = "Traitement de weed",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
  [3] = {["name"] = "Vente de weed",["x"] = 0.0 , ["y"] = 0.0 , ["z"] = 0.0 , ["cost"] = 10000},
}
--asd
RegisterServerEvent("menudrogue:sendData_s")
AddEventHandler("menudrogue:sendData_s", function()
    TriggerClientEvent("menudrogue:f_sendData", source, coke, meth, weed)
end)

RegisterServerEvent("menudrogue:getCash_s")
AddEventHandler("menudrogue:getCash_s", function()
  TriggerEvent('es:getPlayerFromId', source, function(user)
    if (user) then
      local lecashy = user:getMoney()
      TriggerClientEvent("menudrogue:f_getCash", source, lecashy)
    else
      TriggerEvent("es:desyncMsg")
    end
  end)
end)

RegisterServerEvent("menudrogue:setCash")
AddEventHandler("menudrogue:setCash", function(amount)
  TriggerEvent('es:getPlayerFromId', source, function(user)
    if (user) then
      user:removeMoney(amount)
    else
      TriggerEvent("es:desyncMsg")
    end
  end)
end)
