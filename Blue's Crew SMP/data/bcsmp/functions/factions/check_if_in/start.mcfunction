#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
execute store result score #AmountOfIterations Temp run data get storage bcsmp:factions Factions
execute store result score #UUID0 Temp run data get entity @s UUID[0]
execute store result score #UUID1 Temp run data get entity @s UUID[1]
function bcsmp:factions/check_if_in/cycle_factions
#------------------------------------------#