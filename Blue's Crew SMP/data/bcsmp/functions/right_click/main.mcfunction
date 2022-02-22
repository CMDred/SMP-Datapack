#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
# Change Slot detection
execute as @a run function bcsmp:right_click/check_slot_change
# Check
execute as @a[tag=IsHoldingRCItem] at @s run function bcsmp:right_click/raycast/pre_check
#------------------------------------------#