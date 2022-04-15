#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
advancement revoke @s only bcsmp:brewing/place_brewing_stand
fill ~-6 ~-5 ~-6 ~6 ~6 ~6 minecraft:command_block[facing=down]{Command:"function bcsmp:brewing/custom_potions/brewing_stand/marker_check",auto:1b} replace minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false]
#------------------------------------------#
