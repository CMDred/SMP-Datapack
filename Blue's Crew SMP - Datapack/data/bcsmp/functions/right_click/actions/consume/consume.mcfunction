#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
setblock 29999977 1 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data modify block 29999977 1 29832 Items[0] set from entity @s SelectedItem
execute store result score #Count Temp run data get block 29999977 1 29832 Items[0].Count
scoreboard players remove #Count Temp 1
execute store result block 29999977 1 29832 Items[0].Count byte 1 run scoreboard players get #Count Temp
item replace entity @s weapon.mainhand from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
#------------------------------------------#
