#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
setblock 29999977 1 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data modify storage bcsmp:inventory OldItem set from storage bcsmp:inventory Inventory[{Slot:5b}]
data remove storage bcsmp:inventory OldItem.Slot
data modify block 29999977 1 29832 Items[0] set from storage bcsmp:inventory OldItem
data modify block 29999977 1 29832 Items[0].id set from storage bcsmp:inventory OldItem.tag.StoredID
data remove block 29999977 1 29832 Items[0].tag.StoredID
data remove block 29999977 1 29832 Items[0].tag.RightClickItem
data remove block 29999977 1 29832 Items[0].tag.CustomModelData
item replace entity @s hotbar.5 from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
scoreboard players set #SlotHasChanged Temp 1
#------------------------------------------#

