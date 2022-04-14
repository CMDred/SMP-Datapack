#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_offhand run loot replace entity @s weapon.offhand loot bcsmp:brewing/powder_snow_bottle
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_mainhand run loot replace entity @s weapon.mainhand loot bcsmp:brewing/powder_snow_bottle
execute at @s run playsound minecraft:item.bucket.fill_powder_snow master @s ~ ~ ~
#------------------------------------------#
