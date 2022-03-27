#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
data modify storage bcsmp:factions NameLookingFor set from storage bcsmp:factions FactionToJoin.Name
execute store result score #AmountOfIterations Temp run data get storage bcsmp:factions Factions
function bcsmp:factions/join_faction/cycle
function bcsmp:factions/join_faction/join_team
tag @a remove ElectLeader
#------------------------------------------#