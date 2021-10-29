swordname = 0
armorname = 0
horsename = 0
function checksword()
if SwordValue == 0 then
  swordname = "None"
elseif SwordValue == 1 then
  swordname = "Basic Sword"
elseif SwordValue == 2 then
  swordname = "Wooden Sword"
elseif SwordValue == 3 then
  swordname = "Stone Sword"
elseif SwordValue == 4 then -- Arena 2
  swordname = "Iron Sword"
elseif SwordValue == 5 then
  swordname = "Steel Sword"
elseif SwordValue == 6 then
  swordname = "Bluesteel Sword" -- Arena 3
elseif SwordValue == 7 then
  swordname = "Diamond Sword" 
elseif SwordValue == 8 then
  swordname = "Wurtzite Boron Nitride Sword" 
else
  print("SwordValue higher than current Swords")
end
end
function checkarmor()
if ArmorValue == 0 then
  armorname = "None"
elseif ArmorValue == 1 then
  armorname = "Basic Armor"
elseif ArmorValue == 2 then
  armorname = "Leather Armor"
else
  print("ArmorValue higher than current Armors")
end
end
function checkhorse()
if HorseValue == 0 then
  horsename = "None"
elseif HorseValue == 1 then
  horsename = "Horse (Tier I)"
elseif HorseValue == 2 then
  horsename = "Horse (Tier II)"
else
  print("HorseValue higher than current Horses")
end
end
checksword()
checkarmor()
checkhorse()



