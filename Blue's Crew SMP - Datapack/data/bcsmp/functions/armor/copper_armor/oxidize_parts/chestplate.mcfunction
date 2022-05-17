execute if score @s OxidizeChestplate < $OxidizeDuration*4 Temp run scoreboard players add @s OxidizeChestplate 1
execute if score @s OxidizeChestplate = $OxidizeDuration Temp run item modify entity @s armor.chest bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeChestplate = $OxidizeDuration*2 Temp run item modify entity @s armor.chest bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeChestplate = $OxidizeDuration*3 Temp run item modify entity @s armor.chest bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeChestplate = $OxidizeDuration*4 Temp run item modify entity @s armor.chest bcsmp:armor/copper_armor/oxidize_armor