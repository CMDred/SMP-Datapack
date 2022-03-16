#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players operation @s PlayerTemperature = @s BiomeTemperature
function bcsmp:temperature/daytime/check
function bcsmp:temperature/height/check
#execute at @s run function bcsmp:temperature/blocks/check
execute if predicate bcsmp:temperature/frost_walker/frost_walker run function bcsmp:temperature/armor/frost_walker
execute at @s run function bcsmp:temperature/being_wet/change_temperature
execute if predicate bcsmp:temperature/burning at @s run function bcsmp:temperature/burning/change_temperature
execute if predicate bcsmp:temperature/holding_temperature_item run function bcsmp:temperature/holding_item/check
function bcsmp:temperature/adjust_temperature
#-------------BURN TEMPERATURE-------------#
scoreboard players set @s BurnTemperature 3500
execute if predicate bcsmp:temperature/burn_temperature/helmet_fire_protection run function bcsmp:temperature/burn_temperature/helmet_fire_protection
execute if predicate bcsmp:temperature/burn_temperature/chestplate_fire_protection run function bcsmp:temperature/burn_temperature/chestplate_fire_protection
execute if predicate bcsmp:temperature/burn_temperature/leggings_fire_protection run function bcsmp:temperature/burn_temperature/leggings_fire_protection
execute if predicate bcsmp:temperature/burn_temperature/boots_fire_protection run function bcsmp:temperature/burn_temperature/boots_fire_protection
execute if predicate bcsmp:temperature/burn_temperature/has_fire_resistance run scoreboard players add @s BurnTemperature 1200
#-------------FREEZE TEMPERATURE-------------#
scoreboard players set @s FreezeTemperature -10
execute if score @s DisplayTemperature matches ..-10 run function bcsmp:temperature/freeze_temperature/check
#-----------DISPLAY TEMPERATURE------------#
execute if score @s TemperatureDisplay matches 1 run function bcsmp:temperature/display_temperature/display_temperature
execute if score @s TemperatureDisplay matches 0 run function bcsmp:temperature/display_temperature/disabled/temperature_check
#------------------------------------------#
