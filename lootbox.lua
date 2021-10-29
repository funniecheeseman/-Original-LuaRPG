--[[ HAHAHA GET IT CAUSE IT'S FUNNY ]]--
function clearlootbuy()
  lootbuy = 0
  dofile("command.lua")
end

function lootstore()
  if lootbuy == "1" then --Common Lootbox
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("Would you like to buy a Common Lootbox?")
  print("Price: $1000")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("<1> Yes")
  print("<2> No")
  io.write("Lootbox: ")
  LootConfirm = io.read()
    if LootConfirm == "1" then
      if plrgold >= 1000 then
        plrgold = plrgold - 1000
        LootboxA = LootboxA + 1
        print("Bought 1 Common Lootbox! Use RPG Open to open it!")
      else
        print("Sorry, you don't have enough gold! "..plrgold.." gold isn't enough!")
      end
    elseif LootConfirm == "2" then
      LootboxMenu()
    else
      print("Don't know that command!")
      LootboxMenu()
    end
  elseif lootbuy == "2" then --Rare Lootbox
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("Would you like to buy a Rare Lootbox?")
  print("Price: $5000")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("<1> Yes")
  print("<2> No")
  io.write("Lootbox: ")
  LootConfirm = io.read()
    if LootConfirm == "1" then
      if plrgold >= 5000 then
        plrgold = plrgold - 5000
        LootboxB = LootboxB + 1
        print("Bought 1 Rare Lootbox! Use RPG Open to open it!")
      else
        print("Sorry, you don't have enough gold! "..plrgold.." gold isn't enough!")
      end
    elseif LootConfirm == "2" then
      LootboxMenu()
    else
      print("Don't know that command!")
      LootboxMenu()
    end
  elseif lootbuy == "3" then --Epic Lootbox
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("Would you like to buy an Epic Lootbox?")
  print("Price: $10000")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("<1> Yes")
  print("<2> No")
  io.write("Lootbox: ")
  LootConfirm = io.read()
    if LootConfirm == "1" then
      if plrgold >= 10000 then
        plrgold = plrgold - 10000
        LootboxC = LootboxC + 1
        print("Bought 1 Epic Lootbox! Use RPG Open to open it!")
      else
        print("Sorry, you don't have enough gold! "..plrgold.." gold isn't enough!")
      end
    elseif LootConfirm == "2" then
      LootboxMenu()
    else
      print("Don't know that command!")
      LootboxMenu()
    end
  elseif lootbuy == "4" then --5 Dollar Big Box
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("Would you like to buy a 5 Dollar Big Box?")
  print("Price: $50000")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print("<1> Yes")
  print("<2> No")
  io.write("Lootbox: ")
  LootConfirm = io.read()
    if LootConfirm == "1" then
      if plrgold >= 50000 then
        plrgold = plrgold - 50000
        LootboxD = LootboxD + 1
        print("Bought 1 5 Dollar Big Box! Use RPG Open to open it!")
      else
        print("Sorry, you don't have enough gold! "..plrgold.." gold isn't enough!")
      end
    elseif LootConfirm == "2" then
      LootboxMenu()
    else
      print("Don't know that command!")
      LootboxMenu()
    end
  else
    print("That's not an option!")
    lootstore()
  end
end

lootstore()
LootboxMenu()