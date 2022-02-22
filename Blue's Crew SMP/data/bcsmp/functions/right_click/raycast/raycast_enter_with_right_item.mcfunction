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

scoreboard players set #HadNoName Temp 0
execute unless data storage bcsmp:inventory OldItem.tag.display.Name run scoreboard players set #HadNoName Temp 1
execute if score #HadNoName Temp matches 1 run data modify block 29999977 1 29832 Items[0].tag.HadNoName set value 1b
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 1 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.sugar","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 2 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.wooden_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 3 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.stone_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 4 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.iron_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 5 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.golden_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 6 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.diamond_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 7 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.netherite_hoe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 8 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.slime_ball","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 9 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.wooden_axe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 10 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.stone_axe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 11 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.iron_axe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 12 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.golden_axe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 13 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.diamond_axe","italic":"false"}'
execute if score #HadNoName Temp matches 1 if score #CMM Temp matches 14 run data modify block 29999977 1 29832 Items[0].tag.display.Name set value '{"translate":"item.minecraft.netherite_axe","italic":"false"}'
item replace entity @s weapon.mainhand from block 29999977 1 29832 container.0
setblock 29999977 1 29832 air
tag @s add AimsAtRightBlockWithRightItem
#------------------------------------------#
