##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------TICK-------------------#
#Modules
function bcsmp:right_click/main
function bcsmp:advancements/main
function bcsmp:mobs/main
execute if score #UseTemperature GameRules matches 1 run function bcsmp:temperature/main
function bcsmp:factions/main

# Events
execute as @a[scores={RightClick=1..}] at @s run function bcsmp:keyboard_event/right_click
#------------------------------------------#
