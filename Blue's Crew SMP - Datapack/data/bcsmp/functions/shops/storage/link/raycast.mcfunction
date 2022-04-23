#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players remove #Reach Temp 1
execute as @e[type=marker,tag=Storage,distance=...80] if score @s PlayerID = @a[tag=Clicker,limit=1] PlayerID run function bcsmp:shops/storage/link/found_storage
execute as @e[type=marker,tag=Container,distance=...80] if score @s PlayerID = @a[tag=Clicker,limit=1] PlayerID run function bcsmp:shops/storage/link/found_container
execute unless entity @e[type=marker,tag=Storage,distance=...80] unless entity @e[type=marker,tag=Container,distance=...80] if score #Reach Temp matches 1.. positioned ^ ^ ^.2 run function bcsmp:shops/storage/link/raycast
#------------------------------------------#