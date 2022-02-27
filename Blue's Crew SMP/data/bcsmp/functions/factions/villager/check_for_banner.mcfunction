#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s add FactionPaper
data modify storage bcsmp:factions NewFaction set value {}
data modify storage bcsmp:factions NewFaction.Name set from entity @s Item.tag.display.Name
execute as @e[type=item,tag=!FactionPaper,distance=..0.8] at @s if predicate bcsmp:factions/check_if_banner run function bcsmp:factions/villager/check_for_wool
#------------------------------------------#