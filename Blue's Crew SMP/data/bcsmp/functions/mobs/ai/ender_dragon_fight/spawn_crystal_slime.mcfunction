#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tp @e[tag=DestroyChecker,distance=..3] ~ ~-10 ~
summon slime ~ ~ ~ {Tags:["DestroyChecker","IgnoreStatScaling"],Size:3,NoAI:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:0.1d}],DeathLootTable:"",Silent:1b,ActiveEffects:[{Id:8b,Amplifier:2b,Duration:99999,ShowParticles:0b,Ambient:1b,ShowIcon:0b}]}
effect give @e[tag=DestroyChecker,distance=..5] invisibility 99999 255 true
tag @s add SlimeSpawned
execute unless entity @e[tag=CrystalPlace,distance=..2] run summon marker ~ ~ ~ {Tags:["CrystalPlace"]}
#------------------------------------------#