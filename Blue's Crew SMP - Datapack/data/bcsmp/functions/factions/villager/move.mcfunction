#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute as @e[tag=FactionOutpostVillager,tag=FactionCreated,tag=!InviteManager,sort=nearest,limit=1] run tp @s @e[tag=MoveAdvisor,limit=1]
kill @e[tag=MoveAdvisor]

execute as @e[tag=FactionOutpostVillager,tag=InviteManager,sort=nearest,limit=1] run tp @s @e[tag=MoveManager,limit=1]
kill @e[tag=MoveManager]
advancement revoke @s only bcsmp:factions/place_move_egg
#------------------------------------------#

