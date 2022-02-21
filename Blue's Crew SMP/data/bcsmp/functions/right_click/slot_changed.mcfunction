#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------SLOT CHANGED---------------#
tag @s remove IsHoldingRCItem
#execute unless predicate bcsmp:right_click/check_rightclickable run function bcsmp:right_click/raycast/raycast_leave_with_right_item
function bcsmp:right_click/turn_wfoas_back
execute if predicate bcsmp:right_click/check_rightclickable run function bcsmp:right_click/is_holding_rightclickable
scoreboard players operation @s PreviousSlot = #CurrentSlot Temp
#------------------------------------------#

