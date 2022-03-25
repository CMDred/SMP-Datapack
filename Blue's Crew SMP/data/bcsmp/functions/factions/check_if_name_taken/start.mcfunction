#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
data modify storage bcsmp:factions NameLookingFor set from storage bcsmp:factions NewFaction.Name
data modify storage bcsmp:factions CheckIfTaken set from storage bcsmp:factions Factions
execute store result score #AmountOfIterations Temp run data get storage bcsmp:factions Factions
function bcsmp:factions/check_if_name_taken/cycle
#------------------------------------------#