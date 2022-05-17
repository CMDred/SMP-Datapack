execute if score @s OxidizeHelmet < $OxidizeDuration*4 Temp run scoreboard players add @s OxidizeHelmet 1
execute if score @s OxidizeHelmet = $OxidizeDuration Temp run item modify entity @s armor.head bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeHelmet = $OxidizeDuration*2 Temp run item modify entity @s armor.head bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeHelmet = $OxidizeDuration*3 Temp run item modify entity @s armor.head bcsmp:armor/copper_armor/oxidize_armor
execute if score @s OxidizeHelmet = $OxidizeDuration*4 Temp run item modify entity @s armor.head bcsmp:armor/copper_armor/oxidize_armor