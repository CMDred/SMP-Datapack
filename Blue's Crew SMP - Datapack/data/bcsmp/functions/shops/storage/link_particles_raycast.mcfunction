#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players remove #Reach Temp 1
particle dust 0.106 0.698 0.929 0.5 ~ ~ ~ 0.05 0.05 0.05 0.1 10 force
execute unless entity @e[type=marker,tag=Storage,distance=...80] if score #Reach Temp matches 1.. positioned ^ ^ ^.5 run function bcsmp:shops/storage/link_particles_raycast
#------------------------------------------#