#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
scoreboard players set #CurrentBlockAcceptable Temp 0
execute store success score #CurrentBlockAcceptable Temp if block ~ ~ ~ #bcsmp:reinforced_glass_bottle_rightclickable
scoreboard players remove #Reach Temp 1
execute if score #Reach Temp matches 1.. if score #CurrentBlockAcceptable Temp matches 1 run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block
execute if score #Reach Temp matches 1.. if score #CurrentBlockAcceptable Temp matches 0 positioned ^ ^ ^0.25 if block ~ ~ ~ #bcsmp:raycast_allowed run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/raycast
#------------------------------------------#
