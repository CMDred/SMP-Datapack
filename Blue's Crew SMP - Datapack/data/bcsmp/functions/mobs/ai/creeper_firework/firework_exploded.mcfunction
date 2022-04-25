#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute store result score #Owner0 Temp run data get entity @s data.Owner[0]
execute store result score #Owner1 Temp run data get entity @s data.Owner[1]
execute store result score #Owner2 Temp run data get entity @s data.Owner[2]
execute at @s as @e[type=creeper,distance=..5] run function bcsmp:mobs/ai/creeper_firework/creeper_hit
kill @s
#------------------------------------------#