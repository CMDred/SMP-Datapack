#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
schedule function bcsmp:factions/area_of_effect/main 1s
execute unless entity @e[type=marker,tag=FactionCenter,distance=..200] if entity @s[tag=IsInFactionArea] run function bcsmp:factions/area_of_effect/leave_area
execute if entity @e[type=marker,tag=FactionCenter,distance=..200] if entity @s[tag=!IsInFactionArea] run function bcsmp:factions/area_of_effect/enter_area
#------------------------------------------#
