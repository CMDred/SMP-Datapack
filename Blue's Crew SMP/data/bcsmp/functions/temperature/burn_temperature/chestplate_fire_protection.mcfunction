#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------BURN TEMPERATURE-------------#
execute store result score #BurnTemperature Temp run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:fire_protection"}].lvl
scoreboard players operation #BurnTemperature Temp *= #Constant50 Temp
scoreboard players operation @s BurnTemperature += #BurnTemperature Temp
#------------------------------------------#
