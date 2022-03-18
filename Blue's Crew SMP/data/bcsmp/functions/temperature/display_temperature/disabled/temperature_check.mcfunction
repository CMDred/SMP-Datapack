#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------TOO COLD // TOO HOT------------#
scoreboard players operation @s TooHot = @s DisplayTemperature
scoreboard players operation @s TooHot -= @s BurnTemperature

scoreboard players operation @s TooCold = @s FreezeTemperature
scoreboard players operation @s TooCold -= @s DisplayTemperature

execute unless score @s TooHot matches 0.. unless score @s TooCold matches 0.. if entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/exit_extreme_temperature
execute if score @s TooHot matches 0.. unless entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/enter_extreme_temperature
execute if score @s TooCold matches 0.. unless entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/enter_extreme_temperature
#------------------------------------------#
