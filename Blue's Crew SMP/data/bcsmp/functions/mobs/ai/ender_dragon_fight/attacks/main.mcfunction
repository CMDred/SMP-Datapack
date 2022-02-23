#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
# Laser
scoreboard players add #BeforeLaser Temp 1
execute if score #BeforeLaser Temp >= #LaserTime Temp run function bcsmp:mobs/ai/ender_dragon_fight/attacks/laser/charge
execute as @e[tag=LaserTargetMarker] at @s run function bcsmp:mobs/ai/ender_dragon_fight/attacks/laser/marker_main


# Raise Spikes
scoreboard players add #BeforeSpikes Temp 1
execute if score #BeforeSpikes Temp matches 100.. run function bcsmp:mobs/ai/ender_dragon_fight/attacks/spikes/start

execute if entity @s[tag=Phase2] run function bcsmp:mobs/ai/ender_dragon_fight/attacks/main_p2
#------------------------------------------#