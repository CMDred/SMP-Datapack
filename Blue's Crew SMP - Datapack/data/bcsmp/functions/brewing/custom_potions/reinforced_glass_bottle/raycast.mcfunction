#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
scoreboard players remove #Reach Temp 1
execute if score #Reach Temp matches 1.. if block ~ ~ ~ #bcsmp:reinforced_glass_bottle_rightclickable run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block
execute if score #Reach Temp matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #bcsmp:raycast_allowed run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/raycast
#------------------------------------------#
