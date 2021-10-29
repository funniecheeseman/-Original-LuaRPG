-- [[ A way to store items ]] --
function clearitembuy()
  itembuy = 0
  dofile("command.lua")
end


function itemstore()
  --print("hi")
  --print("Type Back to go back!")
  --
  if itembuy == "1" then --Life Potion
    if plrgold > 24 then
    InventoryValue = InventoryValue + 1
    print("Bought a life Potion! Use RPG Heal to use anytime!")
    plrgold = plrgold - 25
    print("You have "..plrgold.." Gold left!")
    print("Anything else you'd like to buy?")
    Shop()
    else
    print("Sorry, you only have "..plrgold.." Gold!")
    end
  clearitembuy()
  --
  elseif itembuy == "2" then --Basic Sword
    if SwordValue == 0  then
      if plrgold > 149 then
      SwordValue = SwordValue + 1
      plrdamage = plrdamage + 2
      print("Bought a new Sword! Gives you +2 Strength!")
      plrgold = plrgold - 150
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")
      Shop()
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif SwordValue == 1 then --Wooden Sword (AutoUpdate)
      if plrgold > 299 then
      SwordValue = SwordValue + 1
      plrdamage = plrdamage + 2
      print("Bought a new Sword! Gives you +2 Strength!")
      plrgold = plrgold - 300
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")
      Shop()
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif SwordValue == 2 then --Stone Sword (AutoUpdate)
      if plrgold > 499 then
      SwordValue = SwordValue + 1
      plrdamage = plrdamage + 2
      print("Bought a new Sword! Gives you +2 Strength!")
      plrgold = plrgold - 500
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")
      Shop()
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif SwordValue == 3 then
      print("You can't buy this now, we're sold out!!")
      OpenShopMenu()
    end
  clearitembuy()
  --
 --[[ elseif itembuy == "2" then --Basic Sword
    if SwordValue == 0  then
      if plrgold > 149 then
        SwordValue = SwordValue + 1
        plrdamage = plrdamage + 2
        print("Bought a new Sword! Gives you +2 Strength!")
        print("You have "..plrgold.." Gold left!")
        plrgold = plrgold - 150
        print("Anything else you'd like to buy?")
        Shop()
      else
      print("Sorry, you only have "..plrgold.." Gold!!")
      Shop()
      end
    else
        print("You can't buy this now!!")
    end
  clearitembuy()
  elseif itembuy == "2" then --Wooden Sword
    if SwordValue == 1  then
      if plrgold > 299 then
      SwordValue = SwordValue + 1
      plrdamage = plrdamage + 2
      print("Bought a new Sword! Gives you +2 Strength!")
      print("You have "..plrgold.." Gold left!")
      plrgold = plrgold - 300
      else
    print("Sorry, you only have "..plrgold.." Gold!!")
    Shop()
      end
    else
      print("You can't buy this now!!")
    end
  clearitembuy()
  --]]
 
  elseif itembuy == "3" then --Basic Armor
    if ArmorValue == 0  then
      if plrgold > 299 then
      ArmorValue = ArmorValue + 1
      plrdef = plrdef + 3
      print("Nothing beats new armor! Gives you +3 Defense!")
      plrgold = plrgold - 300
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")  
      Shop()      
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif ArmorValue == 1 then --Leather Armor
      if plrgold > 799 then
      ArmorValue = ArmorValue + 1
      plrdef = plrdef + 3
      print("Nothing beats new armor! Gives you +3 Defense!")
      plrgold = plrgold - 800
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")        
      Shop()
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif ArmorValue == 2 then
      print("You can't buy this now, we're sold out!!")
      OpenShopMenu()
    end
  clearitembuy()

  --
  elseif itembuy == "4" then --Tier I Horse
    if HorseValue == 0  then
      if plrgold > 499 then
      HorseValue = HorseValue + 1
      horseyname()
      print("Got a new horse named "..horsesname.."! Train him to compete in races with RPG Horse!")
      plrgold = plrgold - 500
      print("You have "..plrgold.." Gold left!")
      print("Anything else you'd like to buy?")        
      Shop()
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        OpenShopMenu()
        end
    elseif HorseValue == 1 and horseslvl >= 5 then --Tier II Horse
      if plrgold > 799 then
      HorseValue = HorseValue + 1
      horseyname()
      print("Got a new Tier II Horse named "..horsesname.."! Train him to compete in races with RPG Horse!")
      print("You have "..plrgold.." Gold left!")
      plrgold = plrgold - 800
        else
        print("Sorry, you only have "..plrgold.." Gold!!")
        Shop()
        end
    end
  clearitembuy()
--  elseif itembuy == "9" then --Next / Previous Page in Shop
---  local page = 0
  else
  print("Don't have that item in store!")
  clearitembuy()
  end

end
itemstore()