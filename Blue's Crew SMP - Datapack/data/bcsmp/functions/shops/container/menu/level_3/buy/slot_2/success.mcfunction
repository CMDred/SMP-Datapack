#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
data modify storage bcsmp:shops PriceItem set from entity @s data.Trades[1].buy
data modify storage bcsmp:shops SoldItem set from entity @s data.Trades[1].sell
data modify storage bcsmp:shops PlayerInv set from entity @a[scores={ContainerItems=1..},limit=1] Inventory 
execute as @a[scores={ContainerItems=1..},limit=1] run function bcsmp:shops/container/buy/check_inv
#------------------------------------------#