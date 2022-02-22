#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
data remove storage bcsmp:inventory OldItem.Slot
data modify block 29999977 1 29832 Items[0] set from storage bcsmp:inventory OldItem
data modify block 29999977 1 29832 Items[0].id set from storage bcsmp:inventory OldItem.tag.StoredID
data remove block 29999977 1 29832 Items[0].tag.StoredID
execute store result score #ItemID Temp run data get block 29999977 1 29832 Items[0].tag.CustomModelData
execute if score #ItemID Temp matches 1 run data remove block 29999977 1 29832 Items[0].tag.Damage
execute if score #ItemID Temp matches 8 run data remove block 29999977 1 29832 Items[0].tag.Damage
data remove block 29999977 1 29832 Items[0].tag.RightClickItem
data remove block 29999977 1 29832 Items[0].tag.CustomModelData

execute store result score #HasNBT Temp run data get block 29999977 1 29832 Items[0].tag
execute if score #HasNBT Temp matches 0 run data remove block 29999977 1 29832 Items[0].tag
#------------------------------------------#
