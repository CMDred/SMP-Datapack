execute if score @s OxidizeLeggings < $OxidizeDuration*4 Temp run scoreboard players add @s OxidizeLeggings 1
execute if score @s OxidizeLeggings = $OxidizeDuration Temp run item modify entity @s armor.legs bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeLeggings = $OxidizeDuration*2 Temp run item modify entity @s armor.legs bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeLeggings = $OxidizeDuration*3 Temp run item modify entity @s armor.legs bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeLeggings = $OxidizeDuration*4 Temp run item modify entity @s armor.legs bcsmp:armor/copper_armor/oxidize_armor