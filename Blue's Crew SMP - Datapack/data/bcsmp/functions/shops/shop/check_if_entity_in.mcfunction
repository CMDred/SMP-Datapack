#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# @s should be the entity we're checking if it's the shop
# @e[type=marker,tag=Shop,sort=nearest,limit=1] should be the shop we want to check if the entity is inside

execute store result score #Size Temp run data get entity @e[type=marker,tag=Shop,sort=nearest,limit=1] data.Size
scoreboard players operation #Size Temp /= #Constant2 Temp
scoreboard players operation #Size Temp += #BonusSize Temp

execute store result score #ShopX Temp run data get entity @e[type=marker,tag=Shop,sort=nearest,limit=1] Pos[0]
scoreboard players operation #ShopX2 Temp = #ShopX Temp

execute store result score #MinX Temp run scoreboard players operation #ShopX Temp -= #Size Temp
execute store result score #MaxX Temp run scoreboard players operation #ShopX2 Temp += #Size Temp

execute store result score #ShopZ Temp run data get entity @e[type=marker,tag=Shop,sort=nearest,limit=1] Pos[2]
scoreboard players operation #ShopZ2 Temp = #ShopZ Temp

execute store result score #MinZ Temp run scoreboard players operation #ShopZ Temp -= #Size Temp
execute store result score #MaxZ Temp run scoreboard players operation #ShopZ2 Temp += #Size Temp

# if the entity's X pos is between #MinX and #MaxX AND the entity's Z pos is between #MinZ and #MaxZ then the entity is inside the shop
execute store result score #ThisX Temp run data get entity @s Pos[0]
execute store result score #ThisZ Temp run data get entity @s Pos[2]

execute if score #ThisX Temp >= #MinX Temp if score #ThisX Temp <= #MaxX Temp if score #ThisZ Temp >= #MinZ Temp if score #ThisZ Temp <= #MaxZ Temp run scoreboard players operation @s IsInShopID = @e[type=marker,tag=Shop,sort=nearest,limit=1] ShopID
#------------------------------------------# 