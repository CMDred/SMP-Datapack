#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
data modify storage bcsmp:inventory OldItem set from entity @s SelectedItem
data remove storage bcsmp:inventory OldItem.Slot
execute if data storage bcsmp:inventory OldItem{id:"minecraft:sugar"} run scoreboard players set #CMM Temp 1
execute if data storage bcsmp:inventory OldItem{id:"minecraft:wooden_hoe"} run scoreboard players set #CMM Temp 2
execute if data storage bcsmp:inventory OldItem{id:"minecraft:stone_hoe"} run scoreboard players set #CMM Temp 3
execute if data storage bcsmp:inventory OldItem{id:"minecraft:iron_hoe"} run scoreboard players set #CMM Temp 4
execute if data storage bcsmp:inventory OldItem{id:"minecraft:golden_hoe"} run scoreboard players set #CMM Temp 5
execute if data storage bcsmp:inventory OldItem{id:"minecraft:diamond_hoe"} run scoreboard players set #CMM Temp 6
execute if data storage bcsmp:inventory OldItem{id:"minecraft:netherite_hoe"} run scoreboard players set #CMM Temp 7
execute if data storage bcsmp:inventory OldItem{id:"minecraft:slime_ball"} run scoreboard players set #CMM Temp 8
execute if data storage bcsmp:inventory OldItem{id:"minecraft:wooden_axe"} run scoreboard players set #CMM Temp 9
execute if data storage bcsmp:inventory OldItem{id:"minecraft:stone_axe"} run scoreboard players set #CMM Temp 10
execute if data storage bcsmp:inventory OldItem{id:"minecraft:iron_axe"} run scoreboard players set #CMM Temp 11
execute if data storage bcsmp:inventory OldItem{id:"minecraft:golden_axe"} run scoreboard players set #CMM Temp 12
execute if data storage bcsmp:inventory OldItem{id:"minecraft:diamond_axe"} run scoreboard players set #CMM Temp 13
execute if data storage bcsmp:inventory OldItem{id:"minecraft:netherite_axe"} run scoreboard players set #CMM Temp 14
setblock 29999977 1 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data modify block 29999977 1 29832 Items[0] set from storage bcsmp:inventory OldItem
data modify block 29999977 1 29832 Items[0].id set value "minecraft:warped_fungus_on_a_stick"
data modify block 29999977 1 29832 Items[0].tag.StoredID set from storage bcsmp:inventory OldItem.id
data modify block 29999977 1 29832 Items[0].tag.RightClickItem set value 1b
execute store result block 29999977 1 29832 Items[0].tag.CustomModelData int 1 run scoreboard players get #CMM Temp
item replace entity @s weapon.mainhand from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
tag @s add AimsAtRightBlockWithRightItem
#------------------------------------------#
