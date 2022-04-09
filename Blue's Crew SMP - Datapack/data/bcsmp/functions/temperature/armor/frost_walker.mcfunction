#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------CALCULATIONS----------------#
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 100
scoreboard players set #FrostWalkerTemperature Temp -500
execute if predicate bcsmp:temperature/frost_walker/frost_walker_1 run scoreboard players set #FrostWalkerWeight Temp 25
execute if predicate bcsmp:temperature/frost_walker/frost_walker_2 run scoreboard players set #FrostWalkerWeight Temp 35

scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players operation #FrostWalkerTemperature Temp *= #FrostWalkerWeight Temp
scoreboard players operation #BaseTemperature Temp += #FrostWalkerTemperature Temp
scoreboard players operation #FrostWalkerWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #FrostWalkerWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#
