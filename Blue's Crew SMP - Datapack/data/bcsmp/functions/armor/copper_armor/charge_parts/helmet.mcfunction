execute store result score $DamageHelmet Temp run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute store result score $BasePowerHelmet Temp run data get entity @s Inventory[{Slot:103b}].tag.BasePower
execute store result score $PowerHelmet Temp run data get entity @s Inventory[{Slot:103b}].tag.Power
execute store result score $ArmorColor Temp run data get entity @s Inventory[{Slot:103b}].tag.display.color

execute if score $ArmorColor Temp matches 16579836 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16580093 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16579837 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514300 run scoreboard players add $PowerHelmet Temp 5

execute if score $ArmorColor Temp matches 16645629 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16579579 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16514299 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514044 run scoreboard players add $PowerHelmet Temp 5

execute if score $PowerHelmet Temp >= $BasePowerHelmet Temp run scoreboard players operation $PowerHelmet Temp = $BasePowerHelmet Temp
execute unless score $DamageHelmet Temp matches ..0 run scoreboard players remove $DamageHelmet Temp 1
execute store result storage bcsmp:armor Helmet.Damage int 1 run scoreboard players get $DamageHelmet Temp
execute store result storage bcsmp:armor Helmet.Power int 1 run scoreboard players get $PowerHelmet Temp
item modify entity @s armor.head bcsmp:armor/copper_armor/charge_helmet