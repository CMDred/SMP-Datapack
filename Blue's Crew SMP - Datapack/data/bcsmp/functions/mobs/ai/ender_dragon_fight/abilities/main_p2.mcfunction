#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
# particles
execute positioned ^ ^1.5 ^-4.5 run particle block minecraft:redstone_block ~ ~ ~ 0.2 0.2 0.2 0.10 60 force 

# Random Player TP 
scoreboard players add #BeforeTP Temp 1
execute if score #BeforeTP Temp >= #TPTime Temp run function bcsmp:mobs/ai/ender_dragon_fight/abilities/teleport/throw_pearl
execute as @e[tag=DragonTPPearl] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/teleport/pearl_main

# Protective Totem
execute as @e[tag=ProtectiveTotem,limit=1] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/main
#------------------------------------------#