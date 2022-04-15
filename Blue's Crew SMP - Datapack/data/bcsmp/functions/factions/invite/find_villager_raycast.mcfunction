#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #Reach Temp 1
execute if entity @e[type=villager,tag=InviteManager,distance=..1.5] run function bcsmp:factions/invite/found_villager
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.25 run function bcsmp:factions/invite/find_villager_raycast
#------------------------------------------#
