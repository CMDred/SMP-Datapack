#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
particle minecraft:snowflake ~ ~ ~ 0.35 0.35 0.35 0.1 15
playsound minecraft:block.powder_snow.fall block @a ~ ~ ~ 1 1.25
execute as @e[distance=..3.5] run data modify entity @s Fire set value 0s
scoreboard players set @a[distance=..3.5] ConsumedItemTimer 12
scoreboard players set @a[distance=..3.5] ConsumedItemType 1

execute if block ~ ~ ~ lava[level=0] run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ lava unless block ~ ~ ~ lava[level=0] run setblock ~ ~ ~ magma_block
execute if block ~ ~ ~ campfire[lit=true,facing=east] run setblock ~ ~ ~ campfire[lit=false,facing=east]
execute if block ~ ~ ~ campfire[lit=true,facing=south] run setblock ~ ~ ~ campfire[lit=false,facing=south]
execute if block ~ ~ ~ campfire[lit=true,facing=west] run setblock ~ ~ ~ campfire[lit=false,facing=west]
execute if block ~ ~ ~ campfire[lit=true,facing=north] run setblock ~ ~ ~ campfire[lit=false,facing=north]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=east] run setblock ~ ~ ~ soul_campfire[lit=false,facing=east]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=south] run setblock ~ ~ ~ soul_campfire[lit=false,facing=south]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=west] run setblock ~ ~ ~ soul_campfire[lit=false,facing=west]
execute if block ~ ~ ~ soul_campfire[lit=true,facing=north] run setblock ~ ~ ~ soul_campfire[lit=false,facing=north]
#------------------------------------------#
