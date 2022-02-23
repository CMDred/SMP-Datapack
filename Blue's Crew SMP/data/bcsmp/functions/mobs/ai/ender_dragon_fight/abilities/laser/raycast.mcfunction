#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
scoreboard players remove #Reach Temp 1
particle dragon_breath ~ ~ ~ 0.8 0.8 0.8 0.001 60 force
particle flash ~ ~ ~ 0.02 0.02 0.02 0.001 5 force
execute if score #Reach Temp matches 1.. as @a[distance=..4] run effect give @s instant_damage 1 1 true 
execute if score #Reach Temp matches 1.. as @a[distance=..4] at @s run particle enchant ~ ~ ~ 2 2 2 0.001 80 force
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.5 unless entity @a[distance=..2] run function bcsmp:mobs/ai/ender_dragon_fight/abilities/laser/raycast
#------------------------------------------#