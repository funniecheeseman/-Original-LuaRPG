--[[
      LuaRPG
      By funniecheeseman aka ColinNH


      I made this yw. IF YOU CRASH THE GAME SOMEHOW: Type Prompt() into the console (if there's an orange arrow, you're in the console. Very difficult to crash it though.)

      This is now open sourced on github! Check it out under funniecheeseman!
      Thank you and happy playing!
]]
--
local PlayerStats = {
  ['Damage'] = 1;
  ['Defense'] = 1;
  ['HP'] = 100;
  ['lvl'] = 1;
  ['Gold'] = 250;
  ['Arena'] = 1;
  ['Exp'] = 0;
};

local Items = {
  ['Lootboxes'] = {
    ['LootboxA'] = 0;
    ['LootboxB'] = 0;
    ['LootboxC'] = 0;
    ['LootboxD'] = 0;
  };

};

plrdamage = 1
plrdef = 1
plrhp = 100
plrlvl = 1
plrgold = 0
plrarena = 1
plrxp = 0
InventoryValue = 0
plrmaxxp = plrlvl * 50
plrmaxhp = plrhp + (plrlvl * 5) - 5
playing = 0
SwordValue = 0
ArmorValue = 0
HorseValue = 0
horseslvl = 1
horsestier = 1
horseshappiness = 100
LootboxA = 0
LootboxB = 0
LootboxC = 0
LootboxD = 0
mob = 0
mobdrop = 0
slimeballcount = 0
honeycombcount = 0
leathercount = 0
zombiefleshcount = 0
StatLock = false
--[[ Running the Game]] --
function startup()
print("Welcome to LuaRPG! By funniecheeseman!! (V. 1.5.8)")
print("Do you have what it takes to reach Arena 3?")
io.write("Returning or New...?: ")
response = string.lower(io.read())
io.write("...And your name?: ")
name = io.read()
ClearLogMenu()
  if response == "new" then
  print("Welcome to LuaRPG, "..name.."!")
  Help()
  elseif response == "returning" then
  print("Fixed this!")
  io.write("Please input password and press enter after each number: ")
  plrdamage = io.read()
  plrdamage = tonumber(plrdamage)
  plrdef = io.read()
  plrdef = tonumber(plrdef)
  plrhp = io.read()
  plrhp = tonumber(plrhp)
  plrlvl = io.read()
  plrlvl = tonumber(plrlvl)
  plrgold = io.read()
  plrgold = tonumber(plrgold)
  plrarena = io.read()
  plrarena = tonumber(plrarena)
  plrxp = io.read()
  plrxp = tonumber(plrxp)
  InventoryValue = io.read()
  InventoryValue = tonumber(InventoryValue)
  playing = io.read()
  playing = tonumber(playing)
  SwordValue = io.read()
  SwordValue = tonumber(SwordValue)
  ArmorValue = io.read()
  ArmorValue = tonumber(ArmorValue)
  HorseValue = io.read()
  HorseValue = tonumber(HorseValue)
  horseslvl = io.read()
  horseslvl = tonumber(horseslvl)
  horsestier = io.read()
  horsestier = tonumber(horsestier)
  horseshappiness = io.read()
  horseshappiness = tonumber(horseshappiness)
  LootboxA = io.read()
  LootboxA = tonumber(LootboxA)
  LootboxB = io.read()
  LootboxB = tonumber(LootboxB)
  LootboxC = io.read()
  LootboxC = tonumber(LootboxC)
  LootboxD = io.read()
  LootboxD = tonumber(LootboxD)
  plrmaxxp = plrlvl * 25
  plrmaxhp = plrhp + (plrlvl * 5) - 5
  Help()
  elseif response == "adminmode" then
  print("This is used for debugging, "..name..", but welcome anyways! To exit, refresh the page. :D")
  else
  print("Ya didn't type new or returning right, or something else went wrong. Re-run the application thank :Y")
  end
end
-- [[ RPG Help / OnStartup Help Menu ]] --
function Help()
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("These are all of the available commands you can do!")
  print("Type RPG Patchnotes for update info!")
  print("~ ~ Reward Commands ~ ~")
  print("RPG Chance")
  print("RPG Lootbox (WIP)")
  print("~ ~ Fighting Commands ~ ~")
  print("RPG Hunt")
  print("RPG Adventure")
  print("RPG Training (WIP)")
  print("RPG Miniboss (Higher Lvl Recommended)")
  print("Multiplayer Commands Coming Soon (RPG Duel, Arena & Dungeon!)")
  print("~ ~ Action Commands ~ ~")
  print("RPG Chop | RPG Fish | RPG Mine (WIP)")
  print("RPG Stats - Toggle Stat Window Anytime!")
  print("RPG Profile")
  print("RPG Inventory")
  print("RPG Shop")
  print("~ ~ Progress Commands ~ ~")
  print("RPG Dungeon (WIP)")
  print("RPG Arena (Coming Soon)")
  print("RPG Save")
  print("~ ~ Unlockable Commands ~ ~")
  print("RPG Heal - If you have health potions")
  print("RPG Horse - If you get a horse")
  print("RPG Open - If you have lootboxes")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("RPG Patchnotes - Update Info!")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("Type RPG Help anytime you want to see this menu!")
  Prompt()
end
-- [ RPG Shop Command ] --
function Shop()
  ClearLogMenu()
  print("~ ~ The Shop (Level "..plrarena.."/3) ~ ~")
  print("~ HP: "..plrhp.."/"..plrmaxhp.." | Gold: "..plrgold.." ~")
  print("Type the # on the left to buy")
  print("<1> Life Potion -- 25 Gold")
    if SwordValue == 0 then
  print("<2> Basic Sword [+2 ATT]-- 150 Gold")
    elseif SwordValue == 1 then
  print("<2> Wooden Sword [+2 ATT]-- 300 Gold")
    elseif SwordValue == 2 then
  print("<2> Stone Sword [+2 ATT]-- 500 Gold")
    elseif SwordValue == 3 then
      if plrarena == 2 then
        print("<2> Iron Sword [+2 ATT]-- 1100 Gold")
      else
        print("<2> Sold Out! Come back later!!")
      end
    else
  print("<2> Sold Out! Come back later!!")
  end
    if ArmorValue == 0 then
  print("<3> Basic Armor [+3 DEF]-- 300 Gold")
    elseif ArmorValue == 1 then
  print("<3> Leather Armor [+3 DEF]-- 800 Gold")
    else
  print("<3> Sold Out! Come back later!!")
  end
    if HorseValue == 0 then
  print("<4> Horse (Tier I) -- 500 Gold")
    elseif HorseValue == 1 then
  print("<4> Horse (Tier II) -- 2500 Gold / lvl 5 horse")
    else
  print("<4> Sold Out! Come back later!!")
end
  print("<5> Back -- to go back!")

  --print("Type RPG Buy to buy shop items.")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  OpenShopMenu()
end

function OpenShopMenu()
itembuy = 0
io.write("Shop: ")
  itembuy = io.read()
    if itembuy == "1" then
      dofile("items.lua")
    elseif itembuy == "2" then
      dofile("items.lua")
    elseif itembuy == "3" then
      dofile("items.lua")
    elseif itembuy == "4" then
      dofile("items.lua")
    elseif itembuy == "5" then
      print("Come again soon!")
      dofile("command.lua")
    else
      print("Don't know that command!")
      dofile("command.lua")
    end
end

function OpenLootboxMenu()
lootbuy = 0
io.write("Lootbox: ")
  lootbuy = io.read()
    if lootbuy == "1" then
      dofile("lootbox.lua")
    elseif lootbuy == "2" then
      dofile("lootbox.lua")
    elseif lootbuy == "3" then
      dofile("lootbox.lua")
    elseif lootbuy == "4" then
      dofile("lootbox.lua")
    elseif lootbuy == "5" then
      print("Come again soon!")
      dofile("command.lua")
    else
      print("Don't know that command!")
      OpenLootboxMenu()
    end
end

function ClearLogMenu()
  io.write("\027[H\027[2J") 
  if response == "rpg stats" then
    StatLock = not StatLock
  end
  if StatLock == true then
    Profile()
    Inventory()
  end
end

function LootboxMenu()
  ClearLogMenu()
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ ~ The Lootbox Store ~ ~")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ HP: "..plrhp.."/"..plrmaxhp.." | Gold: "..plrgold.." ~")
  print("Type the # on the left to choose")
  print("<1> Common Lootbox -- 2 Basic Rewards ($1000)")
  print("<2> Rare Lootbox -- 3 Less Common Rewards ($5000)")
  print("<3> Epic Lootbox -- 8 Items, Only at Popeyes ($10000)")
  print("<4> 5 Dollar Big Lootbox -- 8 Items, Only at Popeyes ($50000)")
  print("<5> Back -- to go back!")
  OpenLootboxMenu()
end
-- [ RPG Profile Command ] --
function Profile()
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print(name.."'s Profile")
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print("Level: "..plrlvl)
print("XP: "..plrxp.." / "..plrmaxxp)
print("-----")
print("Att: "..plrdamage)
print("Def: "..plrdef)
print("HP: "..plrhp.." / "..plrmaxhp)
print("-----")
print("Arena: "..plrarena)
print("Gold: "..plrgold)
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
end
-- [ RPG Save Command ] --
function Save()
  ClearLogMenu()
  print("Saving your game stats and data...")
  print("Done! Here's your password, write it down somewhere:")
  print(plrdamage,plrdef,plrhp,plrlvl,plrgold,plrarena,plrxp,InventoryValue,playing,SwordValue,ArmorValue,HorseValue,horseslvl,horsestier,horseshappiness,LootboxA,LootboxB,LootboxC,LootboxD)
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
end

function Inventory()
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print(name.."'s Inventory")
print("=Key Items=")
dofile("itemnames.lua")
print(swordname)
print(armorname)
print(horsename)
print("=Materials=")
if slimeballcount > 0 then
  print("Slime Balls: "..slimeballcount)
end
if honeycombcount > 0 then
  print("Honeycomb: "..honeycombcount)
end
if leathercount > 0 then
  print("Leather: "..leathercount)
end
if zombiefleshcount > 0 then
  print("Zombie Flesh: "..zombiefleshcount)
end
print("(Materials are a work in progress)")
print("=Consumables=")
print("Life Potions: "..InventoryValue)
print("Lootboxes: "..LootboxA + LootboxB + LootboxC + LootboxD)
  if LootboxA > 0 then
    print("  x"..LootboxA.." Common Lootboxes")
  end
  if LootboxB > 0 then
    print("  x"..LootboxB.." Rare Lootboxes")
  end
  if LootboxC > 0 then
    print("  x"..LootboxC.." Epic Lootboxes")
  end
  if LootboxD > 0 then
    print("  x"..LootboxD.." 5 Dollar Big Boxes")
  end
print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
end

function Heal()
    ClearLogMenu()
    if InventoryValue < 1 then
        print("You don't have any Life Potions, bruh.")
    else
      plrhp = plrmaxhp
      InventoryValue = InventoryValue - 1
      ClearLogMenu()
      print("You drank the Life Potion and restored your health!")
    end
end

function LootScramble()
materials = {"Wolf Pelts","Small Rock","Stick","Large Rock","Leather","Iron Nugget"}
lootfind = math.random(1,4)
end

function DungeonTime() -- YEAAAAAAAAAAAAAA OMIGOSH IT WORKS NOW
  if plrarena == 1 then
  bosshp = math.random(100,150)
    print("~ ~ ~ ~ ~ BOSS BATTLE ~ ~ ~ ~")
  print("=PLRHP: "..plrhp.."/"..plrmaxhp.." | BOSSHP: "..bosshp.."=")
    print("~ ~ ~ ~THE EGG OF DEATH ~ ~ ~")
    print("  ^       ==========        ")
    print("  |     /  O    O   \\      ")
    print("  |    |       V     |     ")
    print(" ===    \\           /      ")
    print("  V       ==========        ")
    print("==============================")
    print("Type the # on the left to attack")
    print("==============================")
    print("<1> HIT -- 100% HIT CHANCE")
    print("<2> STAB -- 50% HIT CHANCE")
    print("<3> FURY -- 10% HIT CHANCE")
    print("==============================")
    io.write("What will you do?: ")
    attackchoice = io.read()
      if attackchoice == "1" then
        atacpwr = plrdamage * 2 + plrdef * 1 + math.random(1,10)
        bosshp = bosshp - atacpwr
        bossdmg = math.random(10,20)
        plrhp = plrhp - bossdmg
        io.write("\027[H\027[2J")
        print("Did "..atacpwr.." damage to boss!")
        print("Boss dealt "..bossdmg.." damage!")
        DungeonTime()
      end
  elseif plrarena == 2 then

  else

  end

end
function OpenLoot()
  ClearLogMenu()
  if LootboxA < 1 then
    if LootboxB < 1 then
      if LootboxC < 1 then
        if LootboxD < 1 then
          print("You don't have any Lootboxes. Use RPG Lootbox to buy some!")
        else
          print("Opened that good ol' 5 Dollar Big Box!")
          LootboxD = LootboxD - 1
        end
      else
        print("Opened that awesome Epic Lootbox!")
        LootboxC = LootboxC - 1
      end
    else
      print("Opened that cool looking Rare Lootbox!")
      LootboxB = LootboxB - 1
    end
  else
    print("Opened that amazing Common Lootbox!")
    LootboxA = LootboxA - 1
  end
end

function Adventure()
  ClearLogMenu()
  print("hi")
end

function Chance()
  ClearLogMenu()
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ ~ The Chance Plaza ~ ~")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("~ HP: "..plrhp.."/"..plrmaxhp.." | Gold: "..plrgold.." ~")
  print("Type the # on the left to choose")
  print("<1> Blackjack -- Play the CPU in a game of BlackJack. Double or Nothing.")
  print("<2> Dice -- Roll the dice, and your standings are based off of what you get: 6/+100% of your bet, 5/+75% 4/+50% 3/-50% 2/-75% 1/-100%.")
  print("<3> Coin Flip -- Whatever you bet either gets the bet added to your current Gold or you lose all you bet with.")
  print("<4> Lottery -- Enter the Lottery and have a chance to win. You can only do this every once in a while.")
  print("<5> Back -- to go back!")
  dofile("chance.lua")
end

function Horse()
  ClearLogMenu()
  if HorseValue > 0 then
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print(" The Great and Mighty "..horsesname.."!")
  print("Level: "..horseslvl)
  print("Tier: "..horsestier)
  print("Happiness: "..horseshappiness.." / 100")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print(" ~ Horse Commands -- Type the # on the left ~ ")
  print("<1> RPG Horse Name -- to rename your horse")
  print("<2> RPG Horse Train -- to level up your horse")
  print("<3> RPG Horse Play -- to make your horse happy")
  print("<4> RPG Horse Race -- to race your horse in the grand race!")
  print("<5> Back -- to go back!")
  dofile("horse.lua")
  else
  print("You don't have a horse!")
  end
end

function PatchesList()
  ClearLogMenu()
  print("===============================")
  print("  =  Version 1.5.8 Updates  =  ")
  print("+ STRING.LOWER SUPPORT! Now case sensitivity is no longer an issue. Enjoy! :D")
  print("+ Added Materials! Crafting of these materials are coming soon, so stay tuned!")
  print("Added mob loot! You have a chance to get goods from the bads.")
  print("+ Added a more organized format")
  print("* Got rid of unneccessary code (faster)")
  print("* Fixed a game crash bug involving horse racing WIP.")
  print("Version 1.5.5 Updates")
  print(" Hi it's 2:30 am im tired but still workin on the lootbox thingny to work.")
  print(" aaaaaaAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
  print(" Fixed the issue with returning when playing Lottery game")
  print(" Updated the heckin............ oh yeah updated the save code to work with lootboxes")
  print(" Added lootbox store, initiation code, personalized script & even to the inventory as a consumable. Uses math and it is WELL organized!!")
  print("Version 1.5.2 Updates")
  print(" FIXED SAVING STATES!! ")
  print(" Improved Blackjack")
  print(" Added Dice functionality to RPG Chance ")
  print(" You now go back to RPG Chance if you accidently typo a number")
  print(" Added Lottery to RPG Chance! ")
  print(" Fixed Horse game bugs :D")
end

function wait(secundos) -- artificial wait command implement :D
  secundos = secundos or 0.03
  local begin = os.time() -- mostly used for horse games
  repeat until os.time() > begin + secundos
end


function LevelUp()
--  if plrlvl == 10 then
--    print("CONGRATULATIONS, YOU BEAT THE GAME!!")
 -- else
  if plrhp < 1 then
    dofile("command.lua")
  else
  plrlvl = plrlvl + 1
  plrdamage = plrdamage + 1
  plrdef = plrdef + 1
  plrhp = plrhp + 5
  plrmaxxp = plrlvl * 50
  plrmaxhp = plrmaxhp + (plrlvl * 5) - 5
  ClearLogMenu()
  print(name.." has leveled up!")
  print("+1 Attack!")
  print("+1 Defense!")
  print("+5 HP!")
  end
--  end
end

function Prompt()
  if plrhp > 0 then
  io.write("cmd: ")
  response = string.lower(io.read())
  dofile("prompt.lua")
  else
  print("No cheatie -- ya already did the die")
  end
end

if playing == 0 then
  startup()
end