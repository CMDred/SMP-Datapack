#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SAVING ITEMS----------------#
execute in minecraft:overworld run setblock 29999977 1 29832 air
execute in minecraft:overworld if data block ~ ~ ~ Items[{Slot:2b}] run setblock 29999977 1 29832 yellow_shulker_box{CustomName:'"SMP Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{SMPMenu:1b}}]}
execute in minecraft:overworld run data modify block 29999977 1 29832 Items[0] set from block ~ ~ ~ Items[{Slot:2b}]
execute as @p in minecraft:overworld run loot give @s mine 29999977 1 29832 minecraft:air{drop_contents:true}

data remove block ~ ~ ~ Items[{Slot:2b}]
#------------------------------------------#