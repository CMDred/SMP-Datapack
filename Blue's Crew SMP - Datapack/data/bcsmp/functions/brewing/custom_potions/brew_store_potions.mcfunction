#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
tag @s add BrewTime1s
execute store result score @s BrewingStandPotion1 run data get block ~ ~ ~ Items[{Slot:0b}].tag.CustomPotionID
execute store result score @s BrewingStandPotion2 run data get block ~ ~ ~ Items[{Slot:1b}].tag.CustomPotionID
execute store result score @s BrewingStandPotion3 run data get block ~ ~ ~ Items[{Slot:2b}].tag.CustomPotionID
#------------------------------------------#
