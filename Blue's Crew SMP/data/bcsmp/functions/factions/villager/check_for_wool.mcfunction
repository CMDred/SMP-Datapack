#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s add FactionBanner
data modify storage bcsmp:factions NewFaction.Banner set from entity @s Item
execute as @e[type=item,tag=!FactionBanner,tag=!FactionPaper,distance=..0.8] at @s if predicate bcsmp:factions/check_if_wool run function bcsmp:factions/villager/got_all_data
#------------------------------------------#