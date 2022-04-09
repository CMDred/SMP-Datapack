#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------CALCULATIONS----------------#
#                    NewPlayerTemp = (PlayerTemperature*BaseWeight + <400 * WetTimer>) / (BaseWeight + WetTimer)
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 100
scoreboard players operation #WaterWeight Temp = @s WetTimer
scoreboard players operation #WaterWeight Temp /= #Constant400 Temp

scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players add #BaseTemperature Temp 400
scoreboard players operation #WaterWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #WaterWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#
