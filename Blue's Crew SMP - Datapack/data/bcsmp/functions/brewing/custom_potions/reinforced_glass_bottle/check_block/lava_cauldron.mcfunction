#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_offhand run loot replace entity @s weapon.offhand loot bcsmp:brewing/lava_bottle
execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle_mainhand run loot replace entity @s weapon.mainhand loot bcsmp:brewing/lava_bottle
setblock ~ ~ ~ cauldron
execute at @s run playsound minecraft:item.bucket.fill_lava master @s ~ ~ ~
scoreboard players set #Reach Temp 0
#------------------------------------------#
