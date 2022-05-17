execute store result score $DamageChestplate Temp run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute store result score $BasePowerChestplate Temp run data get entity @s Inventory[{Slot:102b}].tag.BasePower
execute store result score $PowerChestplate Temp run data get entity @s Inventory[{Slot:102b}].tag.Power
execute store result score $ArmorColor Temp run data get entity @s Inventory[{Slot:102b}].tag.display.color

execute if score $ArmorColor Temp matches 16579836 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16580093 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16579837 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514300 run scoreboard players add $PowerHelmet Temp 5

execute if score $ArmorColor Temp matches 16645629 run scoreboard players add $PowerHelmet Temp 20
execute if score $ArmorColor Temp matches 16579579 run scoreboard players add $PowerHelmet Temp 15
execute if score $ArmorColor Temp matches 16514299 run scoreboard players add $PowerHelmet Temp 10
execute if score $ArmorColor Temp matches 16514044 run scoreboard players add $PowerHelmet Temp 5

execute if score $PowerChestplate Temp >= $BasePowerChestplate Temp run scoreboard players operation $PowerChestplate Temp = $BasePowerChestplate Temp
execute unless score $DamageChestplate Temp matches ..0 run scoreboard players remove $DamageChestplate Temp 1
execute store result storage bcsmp:armor Chestplate.Damage int 1 run scoreboard players get $DamageChestplate Temp
execute store result storage bcsmp:armor Chestplate.Power int 1 run scoreboard players get $PowerChestplate Temp
item modify entity @s armor.chest bcsmp:armor/copper_armor/charge_chestplate