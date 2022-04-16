#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute at @s as @e[tag=Shop,distance=..20] if score @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID if entity @s[tag=Level1] run scoreboard players set #ContainerLimit Temp 5
execute at @s as @e[tag=Shop,distance=..20] if score @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID if entity @s[tag=Level2] run scoreboard players set #ContainerLimit Temp 10
execute at @s as @e[tag=Shop,distance=..20] if score @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID if entity @s[tag=Level3] run scoreboard players set #ContainerLimit Temp 15

execute at @s as @e[tag=Shop,distance=..20] if score @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID run scoreboard players operation #CurrentContainersAmount Temp = @s CurrentContainersAmount

scoreboard players add #CurrentContainersAmount Temp 1
execute if score #CurrentContainersAmount Temp > #ContainerLimit Temp run function bcsmp:shops/place/container/error2
execute unless score #CurrentContainersAmount Temp > #ContainerLimit Temp run function bcsmp:shops/place/container/level_3/place
#------------------------------------------#
