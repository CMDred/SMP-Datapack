#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
advancement revoke @s only bcsmp:factions/click_on_villager_with_emerald
scoreboard players set #Reach Temp 25
execute anchored eyes positioned ^ ^ ^ run function bcsmp:factions/buy_token/find_villager_raycast 
#------------------------------------------#