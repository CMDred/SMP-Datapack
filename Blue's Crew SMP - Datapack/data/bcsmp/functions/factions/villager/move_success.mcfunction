#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute as @e[type=villager,tag=WillBeMoved,tag=!InviteManager,tag=!ShopManager,sort=nearest,limit=1] run tp @s @e[tag=MoveAdvisor,limit=1]
execute as @e[type=villager,tag=WillBeMoved,tag=InviteManager,sort=nearest,limit=1] run tp @s @e[tag=MoveInviteManager,limit=1]
execute as @e[type=villager,tag=WillBeMoved,tag=ShopManager,sort=nearest,limit=1] run tp @s @e[tag=MoveShopManager,limit=1]
#------------------------------------------#
