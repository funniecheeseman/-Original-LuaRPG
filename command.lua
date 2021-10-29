if plrhp < 1 then
  print("======================================")
  print("======== Congrats!! You died. ========")
  print("======================================")
  print("Most recent save password, write it down:")
  print(plrdamage,plrdef,1,plrlvl,plrgold,plrarena,plrxp,InventoryValue,playing,SwordValue,ArmorValue,HorseValue,horseslvl,horsestier,horseshappiness,LootboxA,LootboxB,LootboxC,LootboxD)
  else
  if HorseValue > 0 then
    horseshappiness = horseshappiness - 1
  end
  Prompt()
end
