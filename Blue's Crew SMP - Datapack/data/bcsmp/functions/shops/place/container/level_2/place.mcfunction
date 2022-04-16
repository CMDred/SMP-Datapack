#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Placing] ~ ~ ~ 1 2 1
tellraw @a[tag=Placing] ["",{"text":"You","color":"red"},{"text":" placed a","color":"gold"},{"text":" Level 2","color":"red"},{"text":" Shop Container","color":"gold"},{"text":"! ","color":"red"},{"text":"(","color":"gray"},{"score":{"name": "#CurrentContainersAmount","objective": "Temp"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name": "#ContainerLimit","objective": "Temp"},"color":"red"},{"text":")","color":"gray"}]
particle dust 0.243 0.765 0.016 1 ~ ~ ~ 0.3 0.15 0.3 0.1 20 normal
summon marker ~ ~ ~ {Tags:["Container","Level2","NewContainer","EditMode"]}
setblock ~ ~ ~ barrel[facing=up]
execute as @e[tag=NewContainer] run scoreboard players operation @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID
execute as @e[tag=NewContainer] run data modify entity @s data.Owner set from entity @a[tag=Placing,limit=1] UUID
execute as @e[tag=NewContainer] run data modify entity @s data.MaxSlots set value 4
execute as @e[tag=NewContainer] run data modify entity @s data.Trades set value [{buy:{id:"minecraft:air",Count:1b,tag:{}},sell:{id:"minecraft:air",Count:1b,tag:{}}},{buy:{id:"minecraft:air",Count:1b,tag:{}},sell:{id:"minecraft:air",Count:1b,tag:{}}},{buy:{id:"minecraft:air",Count:1b,tag:{}},sell:{id:"minecraft:air",Count:1b,tag:{}}},{buy:{id:"minecraft:air",Count:1b,tag:{}},sell:{id:"minecraft:air",Count:1b,tag:{}}}]
execute as @e[tag=NewContainer] run scoreboard players operation @s PlayerID = @a[tag=Placing] PlayerID
execute at @s as @e[tag=Shop,distance=..20] if score @s ShopID = @e[tag=ContainerPlace,sort=nearest,limit=1] IsInShopID run scoreboard players add @s CurrentContainersAmount 1
#------------------------------------------#
