#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @a[tag=Placing] ~ ~ ~ 1 2 1
tellraw @a[tag=Placing] [{"text":"You placed a ","color":"white"},{"text":"Level 1 Shop","color":"yellow"},{"text":"!","color":"white"}]
particle dust 0.243 0.765 0.016 1 ~ ~ ~ 0.3 0.15 0.3 0.1 20 normal
summon marker ~ ~ ~ {Tags:["Shop","Level1","NewShop"]}
execute as @e[type=marker,tag=NewShop] run data modify entity @s data.Owner set from entity @a[tag=Placing,limit=1] UUID
execute as @e[type=marker,tag=NewShop] run data modify entity @s data.Size set value 7
execute as @e[type=marker,tag=NewShop] store result score @s ShopID run scoreboard players add #Global ShopID 1
scoreboard players operation @e[type=marker,tag=NewShop] PlayerID = @a[tag=Placing] PlayerID
tag @e[tag=NewShop] remove NewShop
advancement grant @a[tag=Placing] only bcsmp:custom_advancements/business_is_business
#------------------------------------------#
