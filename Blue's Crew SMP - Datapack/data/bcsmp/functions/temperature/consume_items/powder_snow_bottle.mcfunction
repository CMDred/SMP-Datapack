#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------CALCULATIONS----------------#
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 100
scoreboard players set #ItemWeight Temp 25
scoreboard players operation #ItemWeight Temp *= @s ConsumedItemTimer
scoreboard players set #ItemTemperature Temp -700
scoreboard players operation #ItemTemperature Temp *= #ItemWeight Temp


scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp += #ItemTemperature Temp
scoreboard players operation #ItemWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #ItemWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#
