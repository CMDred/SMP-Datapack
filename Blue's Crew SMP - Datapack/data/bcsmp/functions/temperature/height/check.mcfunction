#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players set #YLevel Temp 450
execute store result score #PlayerYLevel Temp run data get entity @s Pos[1] 5
scoreboard players operation #YLevel Temp -= #PlayerYLevel Temp
execute if score #YLevel Temp matches ..-1 run scoreboard players operation #YLevel Temp *= #Constant-1 Temp
scoreboard players operation @s PlayerTemperature -= #YLevel Temp
#------------------------------------------#
