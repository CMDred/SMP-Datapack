#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]
kill @e[type=item,nbt={Item:{tag:{ContainerMenu:1b}}},distance=..4]
execute if entity @s[tag=Level1] run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_1
execute if entity @s[tag=Level2] run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_2
execute if entity @s[tag=Level3] run loot spawn ~ ~ ~ loot bcsmp:shops/container_placer/level_3
execute at @s as @e[type=marker,tag=Shop,distance=..20] if score @s ShopID = @e[type=marker,tag=Container,sort=nearest,limit=1] ShopID run scoreboard players remove @s CurrentContainersAmount 1
kill @s
#------------------------------------------#