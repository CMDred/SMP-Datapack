#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players reset #ItemTemperature Temp
scoreboard players reset #ItemWeight Temp

execute if predicate bcsmp:temperature/holding_temperature_item_mainhand run function bcsmp:temperature/holding_item/mainhand
execute if predicate bcsmp:temperature/holding_temperature_item_offhand run function bcsmp:temperature/holding_item/offhand
#---------------CALCULATIONS---------------#
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 100

scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp += #ItemTemperature Temp
scoreboard players operation #ItemWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #ItemWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#

