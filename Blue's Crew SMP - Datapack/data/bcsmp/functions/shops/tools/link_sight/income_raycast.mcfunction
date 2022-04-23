#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players remove #Reach Temp 1
particle dust 0.133 0.937 0.027 0.5 ~ ~ ~ 0.05 0.05 0.05 0.1 10 force
execute unless entity @e[type=marker,tag=IncomeStorage,distance=...20] if score #Reach Temp matches 1.. positioned ^ ^ ^.1 run function bcsmp:shops/tools/link_sight/income_raycast
#------------------------------------------#