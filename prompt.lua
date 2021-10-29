mobdropchance = 4 --(Same thing as 1/4, or 25% Chance)
swarmdropchance = 8 --(Same thing as 1/8, or 12.5% Chance)
function mobselection()
  mobselect = math.random(1,4)
  if mobselect == 1 then
  mob = "BIG BEE"
  mobdrop = "Honeycomb"
  elseif mobselect == 2 then
  mob = "GOBLIN"
  mobdrop = "Leather"
  elseif mobselect == 3 then
  mob = "ZOMBIE"
  mobdrop = "Zombie Flesh"
  elseif mobselect == 4 then
  mob = "SLIME"
  mobdrop = "Slime Balls"
  end
end

function mobplan()
  if mobdrop == "Honeycomb" then
  honeycombcount = (honeycombcount + moblootamount)
  elseif mobdrop == "Leather" then 
  leathercount = (leathercount + moblootamount)
  elseif mobdrop == "Zombie Flesh" then
  zombiefleshcount = (zombiefleshcount + moblootamount)
  elseif mobdrop == "Slime Balls" then
  slimeballcount = (slimeballcount + moblootamount)
  end
end

function swarmselection()
  swarmselect = math.random(1,4)
  if swarmselect == 1 then
  swarm = "The GIANT BASS FISH"
  elseif swarmselect == 2 then
  swarm = "The FEARLESS ALLIGATOR"
  elseif swarmselect == 3 then
  swarm = "The MIGHTY TREE OF DEATH"
  elseif swarmselect == 4 then
  swarm = "The TARRASQUE"
  end
end

function horseyname()
  horseselect = math.random(1,5)
  if horseselect == 1 then
    horsesname = "Phillip"
  elseif horseselect == 2 then
    horsesname = "Billy"
  elseif horseselect == 3 then
    horsesname = "Pancakes"
  elseif horseselect == 4 then
    horsesname = "Carrot"
  elseif horseselect == 5 then
    horsesname = "Oatmeal"
  end
end

function minibossselection()
  minibossselect = math.random(1,4)
  if minibossselect == 1 then
    miniboss = "The INDESTRUCTIBLE TARRASQUE"
  elseif minibossselect == 2 then
    miniboss = "The TERRIFYING BEHOLDER"
  elseif minibossselect == 3 then
    miniboss = "The MENACING BUGBEAR"
  elseif minibossselect == 4 then
    miniboss = "The GIANT TARANTULA"
  end

end


function cmd()
if response == "rpg hunt" then
  ClearLogMenu()
  mobselection()
  rewardxp = math.random(1,16)
  rewardgold = math.random(10,32)
  monstervalue = math.random (15,35)
  monsterpower = monstervalue - plrdamage - plrdef
  if monsterpower < 1 then
  monsterpower = 1
  end
  plrxp = plrxp + rewardxp
  plrgold = plrgold + rewardgold
  plrhp = plrhp - monsterpower
  mobdroppedloot = math.random(1, mobdropchance)
  moblootamount = math.random(1,2)
  ClearLogMenu()
  print(name.." hunted the furious "..mob.."!")
  print(name.." got "..rewardxp.." XP & "..rewardgold.." Gold!")
  print("But "..name.." also took "..monsterpower.." damage, with "..plrhp.." HP left!")
  if mobdroppedloot == 1 then
    print("Loot Found!! Spoils: +"..moblootamount.." "..mobdrop)
    mobplan()
  end
  playing = 1
  if plrxp >= plrmaxxp then
  plrxp = 0
  LevelUp()
  end
  dofile("command.lua")
elseif response == "rpg help" then
  Help()
elseif response == "rpg shop" then
  Shop()
  dofile("command.lua")
--elseif response == "rpg shop 2" then
  --Shoptwo()
  --dofile("command.lua")
elseif response == "rpg save" then
  Save()
  dofile("command.lua")
elseif response == "rpg profile" then
  Profile()
  dofile("command.lua")
elseif response == "rpg stats" then
  ClearLogMenu()
  dofile("command.lua")
elseif response == "rpg inventory" then
  Inventory()
  dofile("command.lua")
elseif response == "rpg adventure" then
  ClearLogMenu()
  swarmselection()
  rewardxp = math.random(32,64)
  rewardgold = math.random(64,128)
  monstervalue = math.random (55,95)
  monsterpower = monstervalue - plrdamage - plrdef
  if monsterpower < 1 then
  monsterpower = 1
  end
  plrxp = plrxp + rewardxp
  plrgold = plrgold + rewardgold
  plrhp = plrhp - monsterpower
  ClearLogMenu()
  print(name.." attacked "..swarm.."!")
  print(name.." got "..rewardxp.." XP & "..rewardgold.." Gold!")
  print("But "..name.." also took "..monsterpower.." damage, with "..plrhp.." HP left!")
  playing = 1
  if plrxp >= plrmaxxp then
  plrxp = 0
  LevelUp()
  end
  dofile("command.lua")
elseif response == "rpg miniboss" then
  ClearLogMenu()
  minibossselection()
  print(name.." decided to take on "..miniboss.."!!! Was that really a good idea?")
  rewardxp = math.random(100,250)
  rewardgold = math.random(250,500)
  monstervalue = math.random (90,125)
  monsterpower = monstervalue - plrdamage - plrdef
  if monsterpower < 1 then
  monsterpower = 1
  end
  plrxp = plrxp + rewardxp
  plrgold = plrgold + rewardgold
  plrhp = plrhp - monsterpower
  print(name.." got "..rewardxp.." XP & "..rewardgold.." Gold!")
  print("But "..name.." also took "..monsterpower.." damage, with "..plrhp.." HP left!")
  playing = 1
  if plrxp >= plrmaxxp then
  plrxp = 0
  LevelUp()
  end
  dofile("command.lua")
elseif response == "rpg chop" then
  print("FRICKU HAHA")
  dofile("command.lua")
--elseif response == "rpg buy" then
  --print("Opening buy Menu")
  --dofile("items.lua")
elseif response == "rpg heal" then
  Heal()
  dofile("command.lua")
elseif response == "rpg open" then
  OpenLoot()
  dofile("command.lua")
elseif response == "rpg horse" then
  Horse()
  dofile("command.lua")
elseif response == "rpg patchnotes" then
  PatchesList()
  dofile("command.lua")
elseif response == "rpg chance" then
  Chance()
  dofile("command.lua")
elseif response == "rpg dungeon" then
  ClearLogMenu()
  dungeonkey = 5000 * plrarena
  print("Would you like to enter the dungeon? It'll cost..."..dungeonkey.." Gold")
  print("<1> Yes")
  print("<2> No")
  dungeonconfirm = 0
  io.write("Confirm: ")
  dungeonconfirm = io.read()
    if dungeonconfirm == "1" then
      if plrgold >= 5000 then
        print("Entering Dungeon")
        wait(1)
        io.write("\027[H\027[2J") 
        wait(1)
        print("==============================")
        wait(0.75)
        print("==============================")
        wait(0.75)
        print("==============================")
        wait(1)
        DungeonTime()
      else
        print("Not enough gold to enter!")
      end

    elseif dungeonconfirm == "2" then
      print("Leaving Dungeon Entrance...")
    else
      print("Unknown command!")
    end
  dofile("command.lua")
elseif response == "rpg dev" then
io.write("Dev Password: ")
pswrd = io.read()
if pswrd == "Kachow" then
pswrd = nil
print("Opened")
else
print("Incorrecto Rejecto")
dofile("command.lua")
end
elseif response == "rpg lootbox" then
LootboxMenu()
else
  print("That may be a typo. Try again!")
  dofile("command.lua")
end
end
cmd()