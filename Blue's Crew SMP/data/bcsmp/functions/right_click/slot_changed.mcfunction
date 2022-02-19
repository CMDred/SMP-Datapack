#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------SLOT CHANGED---------------#
tag @s remove IsHoldingRCItem
function bcsmp:right_click/check_holding_rightclick_item
scoreboard players operation @s PreviousSlot = $CurrentSlot Temp
#------------------------------------------#

