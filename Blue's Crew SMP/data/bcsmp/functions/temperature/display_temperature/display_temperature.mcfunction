#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DISPLAY TEMPERATURE------------#
scoreboard players operation #BeforeComma DisplayTemperature = @s DisplayTemperature
execute if score @s DisplayTemperature matches ..-1 run scoreboard players operation #BeforeComma DisplayTemperature *= #Constant-1 Temp
scoreboard players operation #BeforeComma DisplayTemperature /= #Constant100 Temp

scoreboard players operation #AfterComma DisplayTemperature = @s DisplayTemperature
execute if score @s DisplayTemperature matches ..-1 run scoreboard players operation #AfterComma DisplayTemperature *= #Constant-1 Temp
scoreboard players operation #AfterComma DisplayTemperature /= #Constant10 Temp
scoreboard players operation #AfterComma DisplayTemperature %= #Constant10 Temp
#-----------TOO COLD // TOO HOT------------#
scoreboard players operation @s TooHot = @s DisplayTemperature
scoreboard players operation @s TooHot -= @s BurnTemperature

scoreboard players operation @s TooCold = @s FreezeTemperature
scoreboard players operation @s TooCold -= @s DisplayTemperature

execute unless score @s TooHot matches 0.. unless score @s TooCold matches 0.. run function bcsmp:temperature/display_temperature/normal_temperature
execute if score @s TooHot matches 0.. run function bcsmp:temperature/display_temperature/too_hot
execute if score @s TooCold matches 0.. run function bcsmp:temperature/display_temperature/too_cold
#------------------------------------------#
