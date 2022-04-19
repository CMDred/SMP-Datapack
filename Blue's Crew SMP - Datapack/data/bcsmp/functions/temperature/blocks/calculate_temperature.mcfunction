#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CALCULATIONS---------------#
scoreboard players operation #BaseTemperature Temp = @s PlayerTemperature
scoreboard players set #BaseWeight Temp 7000

scoreboard players operation #BaseTemperature Temp *= #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp += #BlockTemperature Temp
scoreboard players operation #BlockWeight Temp += #BaseWeight Temp
scoreboard players operation #BaseTemperature Temp /= #BlockWeight Temp

scoreboard players operation @s PlayerTemperature = #BaseTemperature Temp
#------------------------------------------#
