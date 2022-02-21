#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------BIND SCORES TO ITEMS-----------#
# "Bind" items to the blocks we need to right click on
# 1 = concrete powder (sugar)
# 2 = crops (hoes)
## 3 = piston (slime_ball)
## 4 = sticky_piston (axes)

scoreboard players set #SearchFor Temp 0
execute store result score #CMM Temp run data get entity @s SelectedItem.tag.CustomModelData
scoreboard players operation #SearchFor Temp = #CMM Temp
execute if score #CMM Temp matches 2..7 run scoreboard players set #SearchFor Temp 2
execute if score #CMM Temp matches 8 run scoreboard players set #SearchFor Temp 3
execute if score #CMM Temp matches 9..14 run scoreboard players set #SearchFor Temp 4

execute if predicate bcsmp:right_click/sugar run scoreboard players set #SearchFor Temp 1
execute if predicate bcsmp:right_click/hoes run scoreboard players set #SearchFor Temp 2
execute if predicate bcsmp:right_click/slime_ball run scoreboard players set #SearchFor Temp 3
execute if predicate bcsmp:right_click/axes run scoreboard players set #SearchFor Temp 4


# #Reach * 0.25 = reach in blocks
# reach in blocks / 0.25 = #Reach
scoreboard players set #Reach Temp 20
tag @s add ThisPlayer
execute anchored eyes run function bcsmp:right_click/raycast/raycast
tag @s remove ThisPlayer
#------------------------------------------#

