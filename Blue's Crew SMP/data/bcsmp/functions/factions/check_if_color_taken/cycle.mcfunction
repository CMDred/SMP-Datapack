#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #AmountOfIterations Temp 1
execute store success score #IsDifferent Temp run data modify storage bcsmp:factions CheckIfTaken[0].Color set from storage bcsmp:factions ColorLookingFor
execute if score #IsDifferent Temp matches 1 run data remove storage bcsmp:factions CheckIfTaken[0]
execute unless score #IsDifferent Temp matches 0 if score #AmountOfIterations Temp matches 1.. run function bcsmp:factions/check_if_color_taken/cycle
execute if data storage bcsmp:factions {CheckIfTaken:[]} run tag @s add ColorAvailable
#------------------------------------------#