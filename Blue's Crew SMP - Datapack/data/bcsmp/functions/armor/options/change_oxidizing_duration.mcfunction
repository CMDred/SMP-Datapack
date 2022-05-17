scoreboard players operation $OxidizeDuration Temp = @s ChangeOxidizingDuration
scoreboard players operation $OxidizeDuration Temp *= #Constant20 Temp
scoreboard players operation $OxidizeDuration*2 Temp = $OxidizeDuration Temp
scoreboard players operation $OxidizeDuration*2 Temp *= #Constant2 Temp
scoreboard players operation $OxidizeDuration*3 Temp = $OxidizeDuration Temp
scoreboard players operation $OxidizeDuration*3 Temp *= #Constant3 Temp
scoreboard players operation $OxidizeDuration*4 Temp = $OxidizeDuration Temp
scoreboard players operation $OxidizeDuration*4 Temp *= #Constant4 Temp
scoreboard players reset @a ChangeOxidizingDuration