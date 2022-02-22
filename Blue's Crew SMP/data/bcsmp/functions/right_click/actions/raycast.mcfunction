#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
scoreboard players set #CurrentBlockAcceptable Temp 0
function bcsmp:right_click/raycast/check_if_acceptable
scoreboard players remove #Reach Temp 1
execute if score #Reach Temp matches 1.. if score #CurrentBlockAcceptable Temp matches 1 run function bcsmp:right_click/actions/check_block
execute if score #Reach Temp matches 1.. if score #CurrentBlockAcceptable Temp matches 0 positioned ^ ^ ^0.25 run function bcsmp:right_click/actions/raycast
#------------------------------------------#
