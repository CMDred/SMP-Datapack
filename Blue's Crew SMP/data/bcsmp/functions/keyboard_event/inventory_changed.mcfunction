#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------SPELL------------------#
tag @s add ScheduleContext
schedule function bcsmp:keyboard_event/offhand 2t
#-------------CHANGE ITEM LORE-------------#
function items:edit_lore/check_inventory
#-------------------RESET------------------#
advancement revoke @s only bcsmp:inventory_changed
#------------------------------------------#