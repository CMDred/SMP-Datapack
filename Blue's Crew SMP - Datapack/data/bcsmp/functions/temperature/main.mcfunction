#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
execute as @a at @s run function bcsmp:temperature/being_wet/check
execute as @a[scores={ToggleTemperatureDisplay=1..}] run function bcsmp:temperature/display_temperature/toggle_temperature_display
#------------------------------------------#
