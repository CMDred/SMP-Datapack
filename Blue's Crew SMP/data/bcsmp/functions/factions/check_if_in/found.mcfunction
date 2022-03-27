#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s add InFaction
execute store result score #LeaderUUID0 Temp run data get storage bcsmp:factions Factions[0].Leader[0]
execute store result score #LeaderUUID1 Temp run data get storage bcsmp:factions Factions[0].Leader[1]
#------------------------------------------#