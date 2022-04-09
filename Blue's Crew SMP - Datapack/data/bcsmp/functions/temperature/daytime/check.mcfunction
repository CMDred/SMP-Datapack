#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
execute store result score #DayTime Temp run time query daytime
scoreboard players operation #Calc Temp = #DayTime Temp

execute if score #DayTime Temp matches 6001.. run scoreboard players set #Calc Temp 12000
execute if score #DayTime Temp matches 6001.. run scoreboard players operation #Calc Temp -= #DayTime Temp
execute if score #DayTime Temp matches 18001.. run scoreboard players set #Calc Temp -24000
execute if score #DayTime Temp matches 18001.. run scoreboard players operation #Calc Temp += #DayTime Temp

scoreboard players set #DayTimeTemperatureBonus Temp 6000
scoreboard players operation #DayTimeTemperatureBonus Temp -= #Calc Temp
scoreboard players operation #DayTimeTemperatureBonus Temp *= @s DaytimeInfluence
scoreboard players operation #DayTimeTemperatureBonus Temp *= #Constant13 Temp
scoreboard players operation #DayTimeTemperatureBonus Temp /= #Constant10000 Temp

scoreboard players operation @s PlayerTemperature -= #DayTimeTemperatureBonus Temp
#------------------------------------------#
