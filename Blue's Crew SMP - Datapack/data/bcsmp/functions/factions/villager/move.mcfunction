#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute as @e[type=villager,tag=FactionOutpostVillager,tag=FactionCreated,tag=!InviteManager,sort=nearest,limit=1] run tp @s @e[tag=MoveAdvisor,limit=1]
kill @e[type=marker,tag=MoveAdvisor]

execute as @e[type=villager,tag=FactionOutpostVillager,tag=InviteManager,sort=nearest,limit=1] run tp @s @e[tag=MoveManager,limit=1]
kill @e[type=marker,tag=MoveManager]
advancement revoke @s only bcsmp:factions/place_move_egg
#------------------------------------------#
