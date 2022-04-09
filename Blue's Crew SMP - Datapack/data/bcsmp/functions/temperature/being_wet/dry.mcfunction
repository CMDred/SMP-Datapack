#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------MAKE WET-----------------#
scoreboard players set #DrySpeed Temp 100
scoreboard players operation #AddDryPercentage Temp = @s PlayerTemperature
scoreboard players operation #AddDryPercentage Temp /= #Constant100 Temp
scoreboard players operation #DrySpeed Temp += #AddDryPercentage Temp
execute if predicate bcsmp:temperature/burning run scoreboard players add #DrySpeed Temp 350
scoreboard players operation @s[scores={WetTimer=1..}] WetTimer -= #DrySpeed Temp
execute if score @s WetTimer matches ..-1 run scoreboard players set @s WetTimer 0
#------------------------------------------#
