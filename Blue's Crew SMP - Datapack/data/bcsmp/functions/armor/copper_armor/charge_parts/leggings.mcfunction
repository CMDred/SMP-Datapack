execute store result score $DamageLeggings Temp run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute store result score $BasePowerLeggings Temp run data get entity @s Inventory[{Slot:101b}].tag.BasePower
execute store result score $PowerLeggings Temp run data get entity @s Inventory[{Slot:101b}].tag.Power
execute store result score $ArmorColor Temp run data get entity @s Inventory[{Slot:101b}].tag.display.color

execute if score $ArmorColor Temp matches 16579836 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16580093 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16579837 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514300 run scoreboard players add $PowerHelmet Temp 5

execute if score $ArmorColor Temp matches 16645629 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16579579 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16514299 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514044 run scoreboard players add $PowerHelmet Temp 5

execute if score $PowerLeggings Temp >= $BasePowerLeggings Temp run scoreboard players operation $PowerLeggings Temp = $BasePowerLeggings Temp
execute unless score $DamageLeggings Temp matches ..0 run scoreboard players remove $DamageLeggings Temp 1
execute store result storage bcsmp:armor Leggings.Damage int 1 run scoreboard players get $DamageLeggings Temp
execute store result storage bcsmp:armor Leggings.Power int 1 run scoreboard players get $PowerLeggings Temp
item modify entity @s armor.legs bcsmp:armor/copper_armor/charge_leggings