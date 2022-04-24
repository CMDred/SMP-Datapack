#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# get item max stack
scoreboard players reset #MaxStack Temp
setblock 29999977 -64 29832 barrel{Items:[{Slot:26b,id:"minecraft:wheat_seeds",Count:1b}]}
execute at @e[type=marker,tag=ThisIncome] run data modify block 29999977 -64 29832 Items[0] set from block ~ ~ ~ Items[{Slot:26b}]
item modify block 29999977 -64 29832 container.26 bcsmp:set_max_stack
execute store result score #MaxStack Temp run data get block 29999977 -64 29832 Items[0].Count
setblock 29999977 -64 29832 air

# store counts and calculate free space
execute at @e[type=marker,tag=ThisIncome] store result score #IncomeLastSlotCount Temp run data get block ~ ~ ~ Items[{Slot:26b}].Count
execute store result score #FreeSpace Temp run scoreboard players operation #MaxStack Temp -= #IncomeLastSlotCount Temp

# if enough free space, continue the checks
execute if score #ArrivingItemCount Temp > #FreeSpace Temp run function bcsmp:shops/container/buy/error2
execute unless score #ArrivingItemCount Temp > #FreeSpace Temp run function bcsmp:shops/container/buy/income_last_slot_check
#------------------------------------------#