#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players remove #Reach Temp 1
execute if score #Reach Temp matches 1.. run tag @a[distance=..4,sort=nearest,limit=1] add ThisPlayer
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.25 run function bcsmp:advancements/you_broke/find_player_raycast
#------------------------------------------#

