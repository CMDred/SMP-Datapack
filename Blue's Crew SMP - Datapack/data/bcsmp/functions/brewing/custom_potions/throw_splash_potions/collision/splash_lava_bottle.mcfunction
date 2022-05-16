#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
particle minecraft:lava ~ ~ ~ 0.2 0.1 0.2 0.1 10
particle minecraft:falling_lava ~ ~ ~ 0.45 0.5 0.45 1 20
particle minecraft:dripping_lava ~ ~ ~ 0.15 0.15 0.15 1 7
playsound minecraft:block.lava.ambient block @a ~ ~ ~ 0.25 2
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.4 1.5
execute as @e[distance=..3.5,type=!potion] run data modify entity @s Fire set value 50s
effect give @e[distance=..3.5] instant_damage
scoreboard players set @a[distance=..3.5] ConsumedItemTimer 13
scoreboard players set @a[distance=..3.5] ConsumedItemType 2

execute if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ water unless block ~ ~ ~ water[level=0] run setblock ~ ~ ~ cobblestone
execute if block ~ ~ ~ campfire[lit=false,facing=east] run setblock ~ ~ ~ campfire[lit=true,facing=east]
execute if block ~ ~ ~ campfire[lit=false,facing=south] run setblock ~ ~ ~ campfire[lit=true,facing=south]
execute if block ~ ~ ~ campfire[lit=false,facing=west] run setblock ~ ~ ~ campfire[lit=true,facing=west]
execute if block ~ ~ ~ campfire[lit=false,facing=north] run setblock ~ ~ ~ campfire[lit=true,facing=north]
execute if block ~ ~ ~ soul_campfire[lit=false,facing=east] run setblock ~ ~ ~ soul_campfire[lit=true,facing=east]
execute if block ~ ~ ~ soul_campfire[lit=false,facing=south] run setblock ~ ~ ~ soul_campfire[lit=true,facing=south]
execute if block ~ ~ ~ soul_campfire[lit=false,facing=west] run setblock ~ ~ ~ soul_campfire[lit=true,facing=west]
execute if block ~ ~ ~ soul_campfire[lit=false,facing=north] run setblock ~ ~ ~ soul_campfire[lit=true,facing=north]
#------------------------------------------#
