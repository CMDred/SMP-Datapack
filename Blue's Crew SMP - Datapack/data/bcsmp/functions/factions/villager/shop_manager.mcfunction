#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
data modify entity @s Offers.Recipes set value [{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999},{rewardExp:0b,maxUses:99999}]

# SHOP PLACERS ===============================================================================
data modify entity @s Offers.Recipes[0].buy set value {id:"minecraft:emerald_block",Count:2b}
data modify entity @s Offers.Recipes[0].buyB set value {id:"minecraft:bricks",Count:16b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_1
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[0].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[1].buy set value {id:"minecraft:emerald_block",Count:4b}
data modify entity @s Offers.Recipes[1].buyB set value {id:"minecraft:bricks",Count:32b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_2
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[1].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[2].buy set value {id:"minecraft:emerald_block",Count:8b}
data modify entity @s Offers.Recipes[2].buyB set value {id:"minecraft:bricks",Count:64b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/shop_placer/level_3
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[2].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

# CONTAINER PLACERS ==========================================================================
data modify entity @s Offers.Recipes[3].buy set value {id:"minecraft:emerald",Count:2b}
data modify entity @s Offers.Recipes[3].buyB set value {id:"minecraft:barrel",Count:1b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_1
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[3].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[4].buy set value {id:"minecraft:emerald",Count:6b}
data modify entity @s Offers.Recipes[4].buyB set value {id:"minecraft:barrel",Count:1b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_2
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[4].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[5].buy set value {id:"minecraft:emerald",Count:14b}
data modify entity @s Offers.Recipes[5].buyB set value {id:"minecraft:barrel",Count:1b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_3
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[5].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

# STORAGES ==========================================================================

data modify entity @s Offers.Recipes[6].buy set value {id:"minecraft:emerald",Count:6b}
data modify entity @s Offers.Recipes[6].buyB set value {id:"minecraft:barrel",Count:1b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/income_storage
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[6].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[7].buy set value {id:"minecraft:emerald",Count:6b}
data modify entity @s Offers.Recipes[7].buyB set value {id:"minecraft:barrel",Count:1b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/outcome_storage
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[7].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

# TOOLS ==========================================================================
data modify entity @s Offers.Recipes[8].buy set value {id:"minecraft:emerald",Count:6b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/border_tool
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[8].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[9].buy set value {id:"minecraft:emerald",Count:6b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/container_mode_switch
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[9].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[10].buy set value {id:"minecraft:emerald",Count:6b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/storage_linker
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[10].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify entity @s Offers.Recipes[11].buy set value {id:"minecraft:emerald",Count:6b}
execute in overworld positioned 29999977 1 29832 run loot spawn ~ ~ ~ loot bcsmp:shops/link_sight_tool
execute in overworld positioned 29999977 1 29832 run data modify entity @s Offers.Recipes[11].sell set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item
execute in overworld positioned 29999977 1 29832 run kill @e[type=item,distance=..2,sort=nearest,limit=1]

tag @s add Converted
data modify entity @s CustomName set value '{"text":"Shop Manager","bold":true}'
#------------------------------------------#
