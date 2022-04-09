#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players operation #Calc Temp = @s DisplayTemperature
scoreboard players operation #Calc Temp -= @s PlayerTemperature

scoreboard players operation #Calc Temp *= #Constant33 Temp
scoreboard players operation #Calc Temp /= #Constant100 Temp

scoreboard players operation @s DisplayTemperature -= #Calc Temp
#------------------------------------------#
