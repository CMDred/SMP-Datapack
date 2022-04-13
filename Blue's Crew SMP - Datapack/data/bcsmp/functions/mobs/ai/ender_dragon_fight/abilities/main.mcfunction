#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
# Laser
scoreboard players add #BeforeLaser Temp 1
execute if score #BeforeLaser Temp >= #LaserTime Temp run function bcsmp:mobs/ai/ender_dragon_fight/abilities/laser/charge
execute as @e[type=marker,tag=LaserTargetMarker] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/laser/marker_main


# Raise Spikes
scoreboard players add #BeforeSpikes Temp 1
execute if score #BeforeSpikes Temp matches 135 run function bcsmp:mobs/ai/ender_dragon_fight/abilities/spikes/choose_targets
execute if score #BeforeSpikes Temp matches 160.. run function bcsmp:mobs/ai/ender_dragon_fight/abilities/spikes/start

execute if entity @s[tag=Phase2] run function bcsmp:mobs/ai/ender_dragon_fight/abilities/main_p2
#------------------------------------------#
