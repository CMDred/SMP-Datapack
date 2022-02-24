#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
setblock 29999977 1 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data modify storage bcsmp:inventory OldItem set from entity @s SelectedItem
function bcsmp:right_click/turn_wfoas_back/change_item
item replace entity @s weapon.mainhand from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
# remove tags
tag @s remove AimsAtRightBlockWithRightItem
tag @s remove HoesOnCrops
tag @s remove SlimeballOnPiston
tag @s remove AxesOnStickyPiston
tag @s remove SugarOnConcrete
#------------------------------------------#
