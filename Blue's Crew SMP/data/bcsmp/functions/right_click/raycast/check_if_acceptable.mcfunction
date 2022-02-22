#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
## 1 = concrete powder
## 2 = crops
## 3 = piston
## 4 = sticky_piston
execute if score #SearchFor Temp matches 1 if block ~ ~ ~ #minecraft:concrete_powders run scoreboard players set #CurrentBlockAcceptable Temp 1

execute if score #SearchFor Temp matches 2 if block ~ ~ ~ #bcsmp:crops[age=7] run scoreboard players set #CurrentBlockAcceptable Temp 1
execute if score #SearchFor Temp matches 2 if block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set #CurrentBlockAcceptable Temp 1

execute if score #SearchFor Temp matches 3 if block ~ ~ ~ minecraft:piston run scoreboard players set #CurrentBlockAcceptable Temp 1

execute if score #SearchFor Temp matches 4 if block ~ ~ ~ minecraft:sticky_piston run scoreboard players set #CurrentBlockAcceptable Temp 1


# execute if score #SearchFor Temp matches 3 if block ~ ~ ~ minecraft:... run tag @s add ...On...
#------------------------------------------#
