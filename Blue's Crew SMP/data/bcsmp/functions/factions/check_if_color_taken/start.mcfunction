#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s remove ColorAvailable
data modify storage bcsmp:factions ColorLookingFor set from storage bcsmp:factions NewFaction.Color
data modify storage bcsmp:factions CheckIfTaken set from storage bcsmp:factions Factions
execute store result score #AmountOfIterations Temp run data get storage bcsmp:factions Factions
function bcsmp:factions/check_if_color_taken/cycle
execute if entity @s[tag=ColorAvailable] run function bcsmp:factions/create_faction
#------------------------------------------#