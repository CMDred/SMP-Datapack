#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
execute as @a run function bcsmp:temperature/update_temperature
execute as @a[scores={WetTimer=1..}] at @s run function bcsmp:temperature/being_wet/dripping_sounds
schedule function bcsmp:temperature/main_1s 1s
#------------------------------------------#
