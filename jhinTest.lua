if GetObjectName(myHero) ~= "Jhin" then return end
require('Inspired')
local mainMenu = Menu("Jhin v1.0", "Jhin")
mainMenu:Menu("Combo", "Combo")
mainMenu.Combo:Boolean("useQ", "Use Q", true)
mainMenu.Combo:Boolean("useW", "Use W", true)
mainMenu.Combo:Key("Combo1", "Combo", string.byte(" "))

OnTick(function(myHero) 
local target = GetCurrentTarget()
 if mainMenu.Combo.Combo1:Value() then
  if mainMenu.Combo.useQ:Value() and CanUseSpell(myHero,_Q) == READY and ValidTarget(target, 550) then
    CastTargetSpell(target, _Q)
  end
 end
end)
