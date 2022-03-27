#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#-------------------TIME-------------------#
data modify entity @s Invul set value 0
execute at @p run summon marker ~ ~ ~ {Tags:["PlayerTarget"]}
summon marker ~ ~ ~ {Tags:["TempWither"]}
tag @s add WitherAttacking
tag @s remove WitherStasis
kill @e[tag=StasisPoint,sort=nearest,limit=1]
#-----------------INIT MOVE----------------#
scoreboard players set #Speed MotionX 5000
execute as @e[tag=TempWither,sort=nearest,limit=1] facing entity @e[tag=PlayerTarget,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
#execute facing entity @e[tag=PlayerTarget,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute store result score #TempPos MotionX as @e[tag=TempWither] run data get entity @s Pos[0] 10000
execute store result score #TempPos MotionY as @e[tag=TempWither] run data get entity @s Pos[1] 10000
execute store result score #TempPos MotionZ as @e[tag=TempWither] run data get entity @s Pos[2] 10000
execute as @e[tag=TempWither,sort=nearest,limit=1] at @s run tp @s ^ ^ ^0.01
#execute facing entity @e[tag=PlayerTarget,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.01
execute store result score @s MotionX as @e[tag=TempWither] run data get entity @s Pos[0] 10000
execute store result score @s MotionY as @e[tag=TempWither] run data get entity @s Pos[1] 10000
execute store result score @s MotionZ as @e[tag=TempWither] run data get entity @s Pos[2] 10000
execute as @e[tag=TempWither,sort=nearest,limit=1] at @s run tp @s ^ ^ ^-0.01
#execute facing entity @e[tag=PlayerTarget,sort=nearest,limit=1] eyes run tp @s ^ ^ ^-0.01
kill @e[tag=TempWither,sort=nearest,limit=1]
scoreboard players operation @s MotionX -= #TempPos MotionX
scoreboard players operation @s MotionY -= #TempPos MotionY
scoreboard players operation @s MotionZ -= #TempPos MotionZ
scoreboard players operation @s MotionX *= #Speed MotionX
scoreboard players operation @s MotionY *= #Speed MotionX
scoreboard players operation @s MotionZ *= #Speed MotionX
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s MotionZ
function bcsmp:wither_fight/go_attack
#------------------------------------------#