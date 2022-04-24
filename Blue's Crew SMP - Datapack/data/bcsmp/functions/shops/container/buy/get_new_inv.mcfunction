#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players set #AmountOfIterations Temp -2
setblock 29999977 1 29832 air
setblock 29999977 2 29832 air
setblock 29999977 3 29832 air
setblock 29999977 1 29832 yellow_shulker_box
setblock 29999977 2 29832 yellow_shulker_box
setblock 29999977 3 29832 yellow_shulker_box


data modify block 29999977 1 29832 Items set from storage bcsmp:shops PlayerInv
data remove storage bcsmp:shops PlayerInv[{Slot:0b}]
data remove storage bcsmp:shops PlayerInv[{Slot:1b}]
data remove storage bcsmp:shops PlayerInv[{Slot:2b}]
data remove storage bcsmp:shops PlayerInv[{Slot:3b}]
data remove storage bcsmp:shops PlayerInv[{Slot:4b}]
data remove storage bcsmp:shops PlayerInv[{Slot:5b}]
data remove storage bcsmp:shops PlayerInv[{Slot:6b}]
data remove storage bcsmp:shops PlayerInv[{Slot:7b}]
data remove storage bcsmp:shops PlayerInv[{Slot:8b}]
data modify storage bcsmp:shops PlayerInv[{Slot:27b}].Slot set value 0b
data modify storage bcsmp:shops PlayerInv[{Slot:28b}].Slot set value 1b
data modify storage bcsmp:shops PlayerInv[{Slot:29b}].Slot set value 2b
data modify storage bcsmp:shops PlayerInv[{Slot:30b}].Slot set value 3b
data modify storage bcsmp:shops PlayerInv[{Slot:31b}].Slot set value 4b
data modify storage bcsmp:shops PlayerInv[{Slot:32b}].Slot set value 5b
data modify storage bcsmp:shops PlayerInv[{Slot:33b}].Slot set value 6b
data modify storage bcsmp:shops PlayerInv[{Slot:34b}].Slot set value 7b
data modify storage bcsmp:shops PlayerInv[{Slot:35b}].Slot set value 8b
data modify block 29999977 2 29832 Items set from storage bcsmp:shops PlayerInv

data remove storage bcsmp:shops SoldItem.Slot
data remove storage bcsmp:shops SoldItem.tag.ContainerMenu
execute store result score #HasNBT Temp run data get storage bcsmp:shops SoldItem.tag
execute if score #HasNBT Temp matches 0 run data remove storage bcsmp:shops SoldItem.tag

data modify storage bcsmp:shops PriceItem.Slot set value 0b
data remove storage bcsmp:shops PriceItem.tag.ContainerMenu
execute store result score #HasNBT Temp run data get storage bcsmp:shops PriceItem.tag
execute if score #HasNBT Temp matches 0 run data remove storage bcsmp:shops PriceItem.tag

item replace block 29999977 3 29832 container.0 with wheat_seeds
data modify block 29999977 3 29832 Items[{Slot:0b}] set from storage bcsmp:shops PriceItem

item replace entity @s hotbar.0 from block 29999977 1 29832 container.0
item replace entity @s hotbar.1 from block 29999977 1 29832 container.1
item replace entity @s hotbar.2 from block 29999977 1 29832 container.2
item replace entity @s hotbar.3 from block 29999977 1 29832 container.3
item replace entity @s hotbar.4 from block 29999977 1 29832 container.4
item replace entity @s hotbar.5 from block 29999977 1 29832 container.5
item replace entity @s hotbar.6 from block 29999977 1 29832 container.6
item replace entity @s hotbar.7 from block 29999977 1 29832 container.7
item replace entity @s hotbar.8 from block 29999977 1 29832 container.8

item replace entity @s inventory.0 from block 29999977 1 29832 container.9
item replace entity @s inventory.1 from block 29999977 1 29832 container.10
item replace entity @s inventory.2 from block 29999977 1 29832 container.11
item replace entity @s inventory.3 from block 29999977 1 29832 container.12
item replace entity @s inventory.4 from block 29999977 1 29832 container.13
item replace entity @s inventory.5 from block 29999977 1 29832 container.14
item replace entity @s inventory.6 from block 29999977 1 29832 container.15
item replace entity @s inventory.7 from block 29999977 1 29832 container.16
item replace entity @s inventory.8 from block 29999977 1 29832 container.17
item replace entity @s inventory.9 from block 29999977 1 29832 container.18
item replace entity @s inventory.10 from block 29999977 1 29832 container.19
item replace entity @s inventory.11 from block 29999977 1 29832 container.20
item replace entity @s inventory.12 from block 29999977 1 29832 container.21
item replace entity @s inventory.13 from block 29999977 1 29832 container.22
item replace entity @s inventory.14 from block 29999977 1 29832 container.23
item replace entity @s inventory.15 from block 29999977 1 29832 container.24
item replace entity @s inventory.16 from block 29999977 1 29832 container.25
item replace entity @s inventory.17 from block 29999977 1 29832 container.26

item replace entity @s inventory.18 from block 29999977 2 29832 container.0
item replace entity @s inventory.19 from block 29999977 2 29832 container.1
item replace entity @s inventory.20 from block 29999977 2 29832 container.2
item replace entity @s inventory.21 from block 29999977 2 29832 container.3
item replace entity @s inventory.22 from block 29999977 2 29832 container.4
item replace entity @s inventory.23 from block 29999977 2 29832 container.5
item replace entity @s inventory.24 from block 29999977 2 29832 container.6
item replace entity @s inventory.25 from block 29999977 2 29832 container.7
item replace entity @s inventory.26 from block 29999977 2 29832 container.8


execute at @s run summon item ~ ~0.5 ~ {Tags:["BoughtItem"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=BoughtItem,limit=1] Item set from storage bcsmp:shops SoldItem
tag @e remove BoughtItem

execute at @e[type=marker,tag=ThisIncome,sort=nearest,limit=1] run loot insert ~ ~ ~ mine 29999977 3 29832 air{drop_contents:true}

setblock 29999977 1 29832 air
setblock 29999977 2 29832 air
setblock 29999977 3 29832 air
#------------------------------------------#