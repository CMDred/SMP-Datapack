#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute as @a[scores={AddEndPoints=1..}] run function bcsmp:mobs/ai/ender_dragon_fight/points/add_points
execute as @e[type=end_crystal,tag=SlimeSpawned] at @s unless entity @e[tag=DestroyChecker,distance=..3] run function bcsmp:mobs/ai/ender_dragon_fight/points/crystal_slime_killed
execute as @e[type=ender_dragon] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/main

scoreboard players add #DragonFightTicks Temp 1
execute if score #DragonFightTicks Temp matches 20.. run function bcsmp:mobs/ai/ender_dragon_fight/points/second
#------------------------------------------#