#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tag @a remove TPTarget
scoreboard players reset #BeforeTP Temp
scoreboard players set in RandMath 600
scoreboard players set in1 RandMath 700
function bcsmp:random/range_lcg
scoreboard players operation #TPTime Temp = out RandMath
playsound entity.ender_dragon.growl master @a[tag=IsInEnd] ~ ~ ~ 1 2 1
playsound block.beacon.activate master @a[tag=IsInEnd] ~ ~ ~ 1 0 1
tag @r[distance=..60,gamemode=!creative,gamemode=!spectator] add TPTarget
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 4
function bcsmp:random/range_lcg
particle block obsidian ~ ~1 ~ 0.1 5 0.1 0.01 50 force
execute if score out RandMath matches 1 run summon ender_pearl ~ ~2 ~ {Motion:[0.0,1.2,0.3],Tags:["DragonTPPearl"]}
execute if score out RandMath matches 2 run summon ender_pearl ~ ~2 ~ {Motion:[0.0,1.2,-0.3],Tags:["DragonTPPearl"]}
execute if score out RandMath matches 3 run summon ender_pearl ~ ~2 ~ {Motion:[-0.3,1.2,0.0],Tags:["DragonTPPearl"]}
execute if score out RandMath matches 4 run summon ender_pearl ~ ~2 ~ {Motion:[0.3,1.2,0.0],Tags:["DragonTPPearl"]}
#------------------------------------------#