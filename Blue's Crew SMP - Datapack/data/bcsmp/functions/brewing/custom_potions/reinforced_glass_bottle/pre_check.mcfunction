#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
# #Reach * 0.25 = reach in blocks
# reach in blocks / 0.25 = #Reach
scoreboard players set #Reach Temp 20
execute at @s anchored eyes positioned ^ ^ ^ run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/raycast
#------------------------------------------#
