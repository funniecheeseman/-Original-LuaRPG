--[[ The Horse Script... oh my goodness this was annoying to make lol ]]
function OpenHorseMenu()
horseness = 0
io.write("Horse: ")
  horseness = io.read()
    if horseness == "1" then
      HorseRename()
    elseif horseness == "2" then
      HorseTrain()
    elseif horseness == "3" then
      HorsePlay()
    elseif horseness == "4" then
      HorseRace()
    elseif horseness == "5" then
      dofile("command.lua")
    else
      print("Don't know that command!")
      dofile("command.lua")
    end
end

function HorseRename()
  print("What would you like to change "..horsesname.."'s name to?")
  io.write("New Name: ")
  horsesname = io.read()
  print("Your horse has been renamed!")
  Horse()
end
function HorseTrain()
print("Horse Training Selected")
print(".......................")
print("To do training, it'll cost "..(horseslvl * 250).." Gold!")
print("Will you do the training?")
print("<1> Yes")
print("<2> No")
io.write("Horse: ")
HTResponse = io.read()
  if HTResponse == "1" then
    if plrgold >= horseslvl * 250 then
      horseshappiness = horseshappiness - 20
      print("You're Horse gained a level!")
      horseslvl = horseslvl + 1
    else
      print("You need more gold than that! "..plrgold.." Gold won't cover the training costs!")
    end
  elseif HTResponse == "2" then
  Horse()
  else
  print("Sorry, don't know that command!")
  dofile("command.lua")
  end
end

function HorsePlay()
local horsegameselection = 0
local startonegame = 0
  print("What would you like to play with "..horsesname.."?")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print(" The Great and Mighty "..horsesname.."!")
  print("Level: "..horseslvl)
  print("Tier: "..horsestier)
  print("Happiness: "..horseshappiness.." / 100")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  print(" ~ Fun Commands -- Type the # on the left ~ ")
  print("<1> Math Fun -- Math fun testing!")
  print("<2> Three Doors -- Choose a door and hope for the best!")
  print("<3> Saddle Switchout -- Coming Soon!")
  print("<4> Trivia Blast -- Classic Ol' Trivia game!")
  print("<5> Back -- to go back!")
  print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
  io.write("Game Select: ")
  horsegameselection = io.read()
  if horsegameselection == "1" then
  ClearLogMenu() 
  print("~ MATH FUN!! ~")
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("How to play:")
    print("You, with your horse, will solve unpredictable math problems. Every problem you get right, your horse will get happier! TYPE Exit ANYTIME TO EXIT!")
    io.write("Press Enter to Begin")
    startonegame = io.read()
    if startonegame == "" then
      MathFun()
    end
  elseif horsegameselection == "2" then
  ClearLogMenu()
  print("~ THREE DOORS!! ~")
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("How to play:")
    print("Your horse will show you three doors. Behind one of these doors is a happy face,and two of the other doors have a sad face. Your will choose a door, and the horse will reveal one of the doors. You are then allowed to change your answer or not. TYPE Exit ANYTIME TO EXIT!")
    io.write("Press Enter to Begin")
    startonegame = io.read()
    if startonegame == "" then
      ThreeDoors()
    end
  elseif horsegameselection == "3" then

  elseif horsegameselection == "4" then

  elseif horsegameselection == "5" then
  print("Going back to Horse menu!")
  Horse()
  end
end

function HorseRace()
  print("Coming Soon!")
end

function MathFun()
local problemone = 0
local localproblemtwo = 0
local localproblemthree = 0
local problemfour = 0
local problemfive = 0
mathproblem = 0
mathanswer = 0
local problemtype = 0
  ClearLogMenu()
  --print("Howdy")
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    print("~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~")
    problemone = math.random(1,25)
    problemtwo = math.random(1,25)
    problemthree = math.random(1,25)
    problemfour = math.random(1,25)
    problemfive = math.random(1,25)
    problemtype = math.random(1,4)
      if problemtype == 1 then
      print("Addition Problem: ")
      print(problemone.." + "..problemtwo.." + "..problemthree.." + "..problemfour.." + "..problemfive.." = ?")
      --print(problemone + problemtwo + problemthree + problemfour + problemfive)
      mathproblem = (problemone + problemtwo + problemthree + problemfour + problemfive)
      elseif problemtype == 2 then
      print("Subtraction Problem: ")
      print(problemone.." - "..problemtwo.." = ?")
      --print(problemone - problemtwo - problemthree - problemfour - problemfive)
      mathproblem = (problemone - problemtwo)
      elseif problemtype == 3 then
      print("Multiplication Problem: ")
      print(problemone.." * "..problemtwo)
      mathproblem = (problemone * problemtwo)
      elseif problemtype == 4 then
      print("Division Problem: ")
      print(problemone / problemtwo / problemthree / problemfour / problemfive)
      mathproblem = (problemone / problemtwo / problemthree / problemfour / problemfive)
      end
    print("What is the correct Answer?")
    io.write("A: ")
    mathanswer = io.read()
    if mathanswer == "Exit" then
      ClearLogMenu() 
        print("Exiting the game!")
        Horse()
    else
    answer = tonumber(mathanswer)
      if answer == mathproblem then
        print("CORRECT! -- Remember, Type Exit anytime to exit!")
        plrxp = plrxp + 1
        if horseshappiness >= 100 then
          print("+1 XP!")
          print("Your horse is max happiness!!")
          horseshappiness = 100
        else
        horseshappiness = horseshappiness + 5
        print("+1 XP and +5 HORSE HAPPINESS!!")
        end
        wait(1)
        print("Next Problem!")
        mathanswer = nil
        wait(2)
        MathFun()
      else
        print("OOF!! The Correct Answer was "..mathproblem.."!")
        print("Let us try another problem! Remeber -- Type Exit anytime to exit!")
        wait(1)
        print("Next Problem!")
        mathanswer = nil
        wait(2)
        MathFun()
      end
    end
end
function ThreeDoors()
  print("Coming Soon (Lvl 2 Horses Unlock)")
end
OpenHorseMenu()

