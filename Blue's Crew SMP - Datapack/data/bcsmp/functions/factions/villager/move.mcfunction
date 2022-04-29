#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players operation #Search Temp = @s MoveEggID
execute as @e[type=villager,tag=FactionOutpostVillager,tag=Converted] if score @s FactionID = #Search Temp run tag @s add WillBeMoved

execute if entity @e[type=villager,tag=WillBeMoved] run function bcsmp:factions/villager/move_success
execute unless entity @e[type=villager,tag=WillBeMoved] run function bcsmp:factions/villager/move_fail

kill @e[type=marker,tag=MoveAdvisor]
kill @e[type=marker,tag=MoveInviteManager]
kill @e[type=marker,tag=MoveShopManager]
tag @e[tag=WillBeMoved] remove WillBeMoved

advancement revoke @s only bcsmp:factions/place_move_egg
#------------------------------------------#
