summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg RandMath run data get entity @e[type=area_effect_cloud,tag=uuid,limit=1] UUID[0]
execute store result score #temp RandMath run data get entity @e[type=area_effect_cloud,tag=uuid,limit=1] UUID[1]
execute store result score #temp1 RandMath run data get entity @e[type=area_effect_cloud,tag=uuid,limit=1] UUID[2]
execute store result score #temp2 RandMath run data get entity @e[type=area_effect_cloud,tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg RandMath += #temp RandMath
scoreboard players operation #lcg RandMath += #temp1 RandMath
scoreboard players operation #lcg RandMath += #temp2 RandMath
kill @e[type=area_effect_cloud,tag=uuid]
