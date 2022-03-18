#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------CALCULATIONS----------------#
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 100
scoreboard players set #BurningWeight Temp 100

scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players add #BaseTemperature Temp 1000000
scoreboard players operation #BurningWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #BurningWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#
