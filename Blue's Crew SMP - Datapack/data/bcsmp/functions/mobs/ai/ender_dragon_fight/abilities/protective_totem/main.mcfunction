#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
# Protective Totem
scoreboard players operation #TimePreDelay Temp = #TotemChangeTypeTime Temp
scoreboard players remove #TimePreDelay Temp 1
particle end_rod ~ ~52 ~ 1 20 1 0.01 600 force

tp @e[type=ender_dragon] 0 90 0

scoreboard players add #BeforeChangeType Temp 1
execute if score #BeforeChangeType Temp = #TimePreDelay Temp run team leave @s
execute if score #BeforeChangeType Temp >= #TotemChangeTypeTime Temp run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/change_type

execute if score #CurrentType Temp matches 1 run kill @e[type=arrow,distance=..8]

execute at @e[type=ender_dragon] run kill @e[type=arrow,distance=..10]
#------------------------------------------#