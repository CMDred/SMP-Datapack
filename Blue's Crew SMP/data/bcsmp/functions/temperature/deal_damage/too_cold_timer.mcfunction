#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------TIMER-------------------#
execute if score @s TooHot matches -999.. run scoreboard players remove @s TemperatureDamageTimer 1
execute if score @s TooHot matches ..-1000 run scoreboard players remove @s TemperatureDamageTimer 2
execute unless score @s TemperatureDamageTimer matches 1.. run function bcsmp:temperature/deal_damage/deal_damage
#------------------------------------------#
