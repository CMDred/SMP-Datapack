#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s add FactionPaper
execute as @e[type=item,tag=!FactionPaper,distance=..0.8] at @s if predicate bcsmp:factions/check_if_banner run function bcsmp:factions/villager/check_for_wool
#------------------------------------------#