#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------MAIN-------------------#
schedule function bcsmp:main_1s 1s
#------------------BREWING-----------------#
scoreboard players remove @a[scores={HeatResistanceDuration=1..}] HeatResistanceDuration 1
scoreboard players remove @a[scores={FrostResistanceDuration=1..}] FrostResistanceDuration 1
#------------------CLOCK-------------------#
scoreboard players set #CalculatedTime Temp 0
execute if entity @a[predicate=bcsmp:holding_clock] run function bcsmp:clock/actionbar
#---------------TEMPERATURE----------------#
execute as @a run function bcsmp:temperature/update_temperature
execute as @a[scores={WetTimer=1..}] at @s run function bcsmp:temperature/being_wet/dripping_sounds
execute if score #UseTemperature GameRules matches 1 run schedule function bcsmp:temperature/main_1s 1s
#------------------------------------------#
