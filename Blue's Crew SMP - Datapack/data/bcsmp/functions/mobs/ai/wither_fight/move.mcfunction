#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#-------------------MOVE-------------------#
fill ~-1 ~-1 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:mineable/axe
fill ~-1 ~-1 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:mineable/hoe
fill ~-1 ~-1 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:mineable/shovel
fill ~-1 ~-1 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:mineable/pickaxe
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s MotionZ
#execute facing entity @e[tag=PlayerTarget,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
#tp @s ^ ^ ^.1
effect give @s resistance 1 4 true
#------------------------------------------#