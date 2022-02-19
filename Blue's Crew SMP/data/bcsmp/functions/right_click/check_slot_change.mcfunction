#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------CHECK SLOT CHANGE-------------#
execute store result score $CurrentSlot Temp run data get entity @s SelectedItemSlot
execute unless score $CurrentSlot Temp = @s PreviousSlot run function bcsmp:right_click/slot_changed 
#------------------------------------------#

