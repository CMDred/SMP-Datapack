#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
scoreboard players set @s HeatResistanceDuration 0
scoreboard players set @s FrostResistanceDuration 0
execute if entity @s[tag=DealTemperatureDamage] if score @s TooHot matches 0.. run tellraw @a [{"selector":"@s"}," died of a heatstroke"]
execute if entity @s[tag=DealTemperatureDamage] if score @s TooCold matches 0.. run tellraw @a [{"selector":"@s"}," froze to death"]
scoreboard players reset @s Death
#------------------------------------------#
