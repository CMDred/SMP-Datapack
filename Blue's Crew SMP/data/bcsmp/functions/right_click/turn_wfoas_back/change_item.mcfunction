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
data remove block 29999977 1 29832 Items[0].tag.Damage
data remove block 29999977 1 29832 Items[0].tag.RightClickItem
data remove block 29999977 1 29832 Items[0].tag.CustomModelData

execute store result score #HasNBT Temp run data get block 29999977 1 29832 Items[0].tag
execute if score #HasNBT Temp matches 0 run data remove block 29999977 1 29832 Items[0].tag
#------------------------------------------#






#NOTE: "data remove block 29999977 1 29832 Items[0].tag.Damage" will remove the damage NBT from **ALL** items if the item transforms while not in the mainhand. THIS IS A BUG
