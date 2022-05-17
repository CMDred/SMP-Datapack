execute store result score $DamageBoots Temp run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result score $BasePowerBoots Temp run data get entity @s Inventory[{Slot:100b}].tag.BasePower
execute store result score $PowerBoots Temp run data get entity @s Inventory[{Slot:100b}].tag.Power
execute store result score $ArmorColor Temp run data get entity @s Inventory[{Slot:100b}].tag.display.color

execute if score $ArmorColor Temp matches 16579836 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16580093 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16579837 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514300 run scoreboard players add $PowerHelmet Temp 5

execute if score $ArmorColor Temp matches 16645629 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16579579 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16514299 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514044 run scoreboard players add $PowerHelmet Temp 5

execute if score $PowerBoots Temp >= $BasePowerBoots Temp run scoreboard players operation $PowerBoots Temp = $BasePowerBoots Temp
execute unless score $DamageBoots Temp matches ..0 run scoreboard players remove $DamageBoots Temp 1
execute store result storage bcsmp:armor Boots.Damage int 1 run scoreboard players get $DamageBoots Temp
execute store result storage bcsmp:armor Boots.Power int 1 run scoreboard players get $PowerBoots Temp
item modify entity @s armor.feet bcsmp:armor/copper_armor/charge_boots