#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
execute if block ~ ~ ~ lava run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block/lava
execute unless score #Reach Temp matches 0 if block ~ ~ ~ powder_snow run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block/powder_snow
execute unless score #Reach Temp matches 0 if block ~ ~ ~ lava_cauldron run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block/lava_cauldron
execute unless score #Reach Temp matches 0 if block ~ ~ ~ powder_snow_cauldron run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/check_block/powder_snow_cauldron
#------------------------------------------#
