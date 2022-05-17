execute if score @s OxidizeBoots < $OxidizeDuration*4 Temp run scoreboard players add @s OxidizeBoots 1
execute if score @s OxidizeBoots = $OxidizeDuration Temp run item modify entity @s armor.feet bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeBoots = $OxidizeDuration*2 Temp run item modify entity @s armor.feet bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeBoots = $OxidizeDuration*3 Temp run item modify entity @s armor.feet bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeBoots = $OxidizeDuration*4 Temp run item modify entity @s armor.feet bcsmp:armor/copper_armor/oxidize_armor