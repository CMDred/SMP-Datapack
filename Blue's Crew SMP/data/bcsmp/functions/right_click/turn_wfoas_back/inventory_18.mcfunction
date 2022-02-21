#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
setblock 29999977 1 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data modify storage bcsmp:inventory OldItem set from storage bcsmp:inventory Inventory[{Slot:27b}]
function bcsmp:right_click/turn_wfoas_back/change_item
item replace entity @s inventory.18 from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
scoreboard players set #SlotHasChanged Temp 1
#------------------------------------------#
