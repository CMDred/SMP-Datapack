#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
scoreboard players remove #Reach Temp 1
execute if score #Reach Temp matches 1.. if entity @s[distance=..0.5] run scoreboard players set #FoundPlayer Temp 1
particle flame
execute if score #FoundPlayer Temp matches 0 if score #Reach Temp matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #bcsmp:raycast_allowed run function bcsmp:temperature/blocks/raycast
#------------------------------------------#
