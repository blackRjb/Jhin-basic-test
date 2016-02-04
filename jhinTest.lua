local myHero = GetMyHero()
if GetObjectName(myHero) ~= "Jhin" then return end
local target = GetCurrentTarget()
require('Inspired')

local mainMenu = Menu("Jhin v1.0", "Jhin")
mainMenu:Menu("Combo", "Combo")
mainMenu.Combo:Boolean("useQ", "Use Q", true)
mainMenu.Combo:Boolean("useW", "Use W", true)
mainMenu.Combo:Key("Combo1", "Combo", string.byte(" "))

OnTick(function(myHero) 
if mainMenu.Combo.Combo1:Value() then
if mainMenu.Combo.useQ:Value() and CanUseSpell(myHero,_Q) == READY and ValidTarget(target, 550) then
CastTargetSpell(target, _Q)
end
end
end)
