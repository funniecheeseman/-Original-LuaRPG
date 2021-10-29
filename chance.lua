bet = 0
chanceselect = 0
----------Blackjack
bjskip = 0
local hitorstay = 0
local bjplr = 0
local bjcpu = 0
local bjplrcard1 = math.random(1,10)
local bjplrcard2 = math.random(1,10)
local bjplrcard3 = 0
local bjplrcard4 = 0
local bjplrcard5 = 0
local bjcpucard1 = math.random(1,10)
local bjcpucard2 = math.random(1,10)
local bjcpucard3 = 0
local bjcpucard4 = 0
local bjcpucard5 = 0
----------Dice
local Dice = 0
----------Coin Flip
local Coin = true --(heads = true // tails = false)

function clearbet()
  bet = 0
  chanceselect = 0
end
--[[
function bjscramble()
-- ok for some reason replit is really dumb because the math.random() always picks the same random answers every time the program is ran, so I'ma bouta end this program's whole career
scrambledboi = math.random(1,9001)
print(scrambledboi)
scrambleboi = 0
repeat
scrambleboi = scrambleboi + 1
bjplrcard1 = math.random(1,10)
bjcpucard1 = math.random(1,10)
until 
scrambleboi == scrambledboi
end
or not
--]]

function addbj()
bjplr = bjplrcard1 + bjplrcard2 + bjplrcard3 + bjplrcard4 + bjplrcard5
bjcpu = bjcpucard1 + bjcpucard2 + bjcpucard3 + bjcpucard4 + bjcpucard5
  if bjplr > 21 then
  bjskip = 1
  hitorstay = "Stay"
  end
end

function PlayBlackjack()

--Start
  if bjplrcard5 > 0 then
  print("Your Cards: "..bjplrcard1.." / "..bjplrcard2.." / "..bjplrcard3.." / "..bjplrcard4.." / "..bjplrcard5)
    if bjcpucard3 == 0 then
  print("CPU Cards: "..bjcpucard1.." / *")
    elseif bjcpucard3 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / *")
    elseif bjcpucard4 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / *")
    elseif bjcpucard5 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / * / *")
    end
  elseif bjplrcard4 > 0 then
  print("Your Cards: "..bjplrcard1.." / "..bjplrcard2.." / "..bjplrcard3.." / "..bjplrcard4)
    if bjcpucard3 == 0 then
  print("CPU Cards: "..bjcpucard1.." / *")
    elseif bjcpucard3 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / *")
    elseif bjcpucard4 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / *")
    elseif bjcpucard5 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / * / *")
    end
  elseif bjplrcard3 > 0 then
   print("Your Cards: "..bjplrcard1.." / "..bjplrcard2.." / "..bjplrcard3)
    if bjcpucard3 == 0 then
  print("CPU Cards: "..bjcpucard1.." / *")
    elseif bjcpucard3 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / *")
    elseif bjcpucard4 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / *")
    elseif bjcpucard5 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / * / *")
    end
  elseif bjplrcard2 > 0 then
  --bjscramble() --scrambles numbers TRULY very well! (before starting game.) Pro tip: This doesn't work :p
   print("Your Cards: "..bjplrcard1.." / "..bjplrcard2)
    if bjcpucard3 == 0 then
  print("CPU Cards: "..bjcpucard1.." / *")
    elseif bjcpucard3 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / *")
    elseif bjcpucard4 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / *")
    elseif bjcpucard5 > 0 then
  print("CPU Cards: "..bjcpucard1.." / * / * / * / *")
    end
  end
  hitorstay = 0
  addbj() -- checking if you went over!
  if bjskip == 0 then
  io.write("Hit or Stay?: ")
  hitorstay = io.read()
  end
  ---addbj() -- checking if you went over!
    if hitorstay == "Hit" then
    print("Drawing Cards!")
      if bjplrcard3 == 0 then
      bjplrcard3 = math.random(1,10)
        if bjcpu < 17 then
        bjcpucard3 = math.random(1,10)
        else
        bjcpucard3 = 0
        end
      PlayBlackjack()
      elseif bjplrcard4 == 0 then
      bjplrcard4 = math.random(1,10)
        if bjcpu < 17 then
        bjcpucard4 = math.random(1,10)
        else
        bjcpucard4 = 0
        end
      PlayBlackjack()
      elseif bjplrcard5 == 0 then
      bjplrcard5 = math.random(1,10)
        if bjcpu < 17 then
        bjcpucard5 = math.random(1,10)
        else
        bjcpucard5 = 0
        end
      PlayBlackjack()
      end
    elseif hitorstay == "Stay" then
    print("Staying!")
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("~ ~THE FINAL RESULTS~ ~")
    bjplr = bjplrcard1 + bjplrcard2 + bjplrcard3 + bjplrcard4 + bjplrcard5
    bjcpu = bjcpucard1 + bjcpucard2 + bjcpucard3 + bjcpucard4 + bjcpucard5
        print("Your Cards: "..bjplrcard1.." / "..bjplrcard2.." / "..bjplrcard3.." / "..bjplrcard4.." / "..bjplrcard5)
        print("CPU Cards: "..bjcpucard1.." / "..bjcpucard2.." / "..bjcpucard3.." / "..bjcpucard4.." / "..bjcpucard5)
      if bjplr > 21 and bjcpu > 21 or bjplr == bjcpu then
        print("Your Total: "..bjplr)
        print("CPU Total: "..bjcpu)
        print("It's a tie! Keep your bets!!")
      elseif bjplr <= 21 and bjcpu > 21 then
        plrgold = plrgold + bet
        print("Your Total: "..bjplr)
        print("CPU Total: "..bjcpu)
        print("You Win! (They Busted!!) Earned +"..bet.." Gold!")
        print("You now have "..plrgold.." Gold!")
      elseif bjplr > 21 and bjcpu <= 21 then
        plrgold = plrgold - bet
        print("Your Total: "..bjplr)
        print("CPU Total: "..bjcpu)
        print("You lose! Lost -"..bet.." Gold!")
        print("You now have "..plrgold.." Gold!")
      elseif bjplr <= 21 and bjcpu <= 21 then
          if bjplr > bjcpu then
            plrgold = plrgold + bet
            print("Your Total: "..bjplr)
            print("CPU Total: "..bjcpu)
            print("You Win! Earned +"..bet.." Gold!")
            print("You now have "..plrgold.." Gold!")
          else
            plrgold = plrgold - bet
            print("Your Total: "..bjplr)
            print("CPU Total: "..bjcpu)
            print("You lose! Lost -"..bet.." Gold!")
            print("You now have "..plrgold.." Gold!")
          end
      end
    else
    print("Unknown command!")
    dofile("command.lua")
    end
end
function PlayDice()
print("Rolling Dice!")
diceresult = 0
Dice = math.random(1,6)
print("Dice Rolled "..Dice)
  if Dice == 1 then
  diceresult = bet
  plrgold = plrgold - diceresult
  print("Ouch! Lost all of your bet!! Lost -"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  elseif Dice == 2 then
  diceresult = (bet * 0.75)
  plrgold = plrgold - diceresult
  print("Lost 75% of your bet! Lost -"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  elseif Dice == 3 then
  diceresult = (bet * 0.50)
  plrgold = plrgold - diceresult
  print("Lost 50% of your bet! Lost -"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  elseif Dice == 4 then
  diceresult = (bet * 0.50)
  plrgold = plrgold + diceresult
  print("Earned 50% of your bet! Earned +"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  elseif Dice == 5 then
  diceresult = (bet * 0.75)
  plrgold = plrgold + diceresult
  print("Earned 75% of your bet! Earned +"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  elseif Dice == 6 then
  diceresult = bet
  plrgold = plrgold + diceresult
  print("Yay! Earned 100% of your bet!! Earned +"..diceresult.." Gold!")
  print("You now have "..plrgold.." Gold!")
  end
end

function PlayCoinFlip()
print("Playing Coin flip!")
print("You'll be heads!!")
print("Flipping Coin...")
coinflipping = 0
coinflipping = math.random(1,2)
  if coinflipping == 1 then
    coin = true
    print("=======================")
    print("=====IT WAS HEADS!=====")
    print("=======================")
    plrgold = plrgold + bet
    print("You earned +"..bet.." Gold!")
    print("You now have "..plrgold.." Gold!")
    print("=======================")
    wait(1)
    Chance()
  elseif coinflipping == 2 then
    coins = false
    print("=======================")
    print("=====IT WAS TAILS!=====")
    print("=======================")
    plrgold = plrgold - bet
    print("You lost -"..bet.." Gold!")
    print("You now have "..plrgold.." Gold!")
    print("=======================")
    wait(1)
    Chance()
  end


end

function PlayLottery()
print("e")

end

function ChanceChoice()

print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
print("What would you like to do? ")
io.write("Chance: ")
chanceselect = io.read()
  if chanceselect == "1" then
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("Welcome to Blackjack!")
    io.write("Bet: ")
    numbet = io.read()
    bet = tonumber(numbet)
      if bet <= plrgold then
      print("Drawing cards...")
      PlayBlackjack()
      dofile("command.lua")
      else
      print("You don't have that much!")
      Chance()
      end
  elseif chanceselect == "2" then
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("Welcome to Dice!")
    io.write("Bet: ")
    numbet = io.read()
    bet = tonumber(numbet)
      if bet > plrgold then
      print("You don't have that much!")
      Chance()
      else
      PlayDice()
      end
  elseif chanceselect == "3" then
    print("Welcome to Coin Flip!")
    io.write("Bet: ")
    numbet = io.read()
    bet = tonumber(numbet)
      if bet > plrgold then
      print("You don't have that much!")
      Chance()
      else
      PlayCoinFlip()
      end
  elseif chanceselect == "4" then
    print("=========================")
    print("===Welcome to Lottery!===")
    print("=========================")
    print("Please pick a card and bet below:")
    print("<1> Basic Card: Costs 25% of your gold (35% Chance)")
    print("<2> Advanced Card: Costs 50% of your gold (35% Chance)")
    print("<3> Elite Card: Costs 75% of your gold (35% Chance)")
    print("<4> Epic Card: Costs 100% of your gold (35% Chance)")
    print("<5> Back -- to go back!")
    io.write("Bet: ")
    bet = io.read()
      if bet == "1" then
      print("Basic Card picked! Oh boy I hope I won!")
      wait(2)
      lchance = math.random(1,3)
      winlottery = (plrgold / 4)
      if lchance == 1 then
          print("=========================")
          print("======= YOU WIN! ========")
          print("=========================")
          plrgold = plrgold + winlottery
          print("Got "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      else
          print("=========================")
          print("======= YOU LOSE! =======")
          print("=========================")
          plrgold = plrgold - winlottery
          print("Lost "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      end
      wait(1)
      Chance()
      elseif bet == "2" then
      print("Advanced Card picked! Oh boy I hope I won!")
      wait(2)
      lchance = math.random(1,3)
      winlottery = (plrgold * 0.50)
      if lchance == 1 then
          print("=========================")
          print("======= YOU WIN! ========")
          print("=========================")
          plrgold = plrgold + winlottery
          print("Got "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      else
          print("=========================")
          print("======= YOU LOSE! =======")
          print("=========================")
          plrgold = plrgold - winlottery
          print("Lost "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      end
      wait(1)
      Chance()
      elseif bet == "3" then
      print("Elite Card picked! Oh boy I hope I won!")
      wait(2)
      lchance = math.random(1,3)
      winlottery = (plrgold * 0.75)
      if lchance == 1 then
          print("=========================")
          print("======= YOU WIN! ========")
          print("=========================")
          plrgold = plrgold + winlottery
          print("Got "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      else
          print("=========================")
          print("======= YOU LOSE! =======")
          print("=========================")
          plrgold = plrgold - winlottery
          print("Lost "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      end
      wait(1)
      Chance()
      elseif bet == "4" then
      print("Epic Card picked! Oh boy I hope I won!")
      wait(2)
      lchance = math.random(1,3)
      winlottery = plrgold
      if lchance == 1 then
          print("=========================")
          print("======= YOU WIN! ========")
          print("=========================")
          plrgold = plrgold + winlottery
          print("Got "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      else
          print("=========================")
          print("======= YOU LOSE! =======")
          print("=========================")
          plrgold = plrgold - winlottery
          print("Lost "..winlottery.." gold!")
          print("You now have "..plrgold.." gold!")
      end
      wait(1)
      Chance()
      else
      print("Going back!")
      Chance()
      end
  elseif chanceselect == "5" then
    print("Thanks for stopping by!!")
  else
    print("That's not a valid choice!")
    Chance()
  end
end
  ChanceChoice()