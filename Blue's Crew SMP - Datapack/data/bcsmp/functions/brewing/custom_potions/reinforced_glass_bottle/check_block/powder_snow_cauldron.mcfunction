#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_offhand run loot replace entity @s weapon.offhand loot bcsmp:brewing/powder_snow_bottle
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_mainhand run loot replace entity @s weapon.mainhand loot bcsmp:brewing/powder_snow_bottle
execute if block ~ ~ ~ powder_snow_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ powder_snow_cauldron[level=2] run setblock ~ ~ ~ powder_snow_cauldron[level=1]
execute if block ~ ~ ~ powder_snow_cauldron[level=3] run setblock ~ ~ ~ powder_snow_cauldron[level=2]
execute at @s run playsound minecraft:item.bucket.fill_powder_snow master @s ~ ~ ~
scoreboard players set #Reach Temp 0
#------------------------------------------#
