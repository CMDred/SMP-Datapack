#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------CONSUME------------------#
execute if score @s ConsumeItem2 matches 0 run loot replace entity @s hotbar.0 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 1 run loot replace entity @s hotbar.1 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 2 run loot replace entity @s hotbar.2 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 3 run loot replace entity @s hotbar.3 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 4 run loot replace entity @s hotbar.4 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 5 run loot replace entity @s hotbar.5 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 6 run loot replace entity @s hotbar.6 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 7 run loot replace entity @s hotbar.7 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem2 matches 8 run loot replace entity @s hotbar.8 loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem matches 0 run loot replace entity @s weapon.offhand loot bcsmp:brewing/reinforced_glass_bottle
tag @s remove ConsumedItem
#------------------------------------------#
