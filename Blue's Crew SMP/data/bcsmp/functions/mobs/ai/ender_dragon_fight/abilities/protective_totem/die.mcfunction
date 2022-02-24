#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
bossbar set bcsmp:totem_health visible false
execute as @e[type=ender_dragon] run data modify entity @s NoAI set value 0b
tag @e[type=ender_dragon] remove IsProtected
particle flash ~ ~ ~ 2 2 2 0.01 30 force
playsound entity.wither.ambient master @s ~ ~ ~ 10 2 1
playsound entity.enderman.scream master @s ~ ~ ~ 10 2 1
tp @s ~ ~-300 ~ 
execute at @e[tag=CrystalPlace] if block ~ ~-2 ~ obsidian run summon end_crystal
execute as @e[tag=CrystalPlace] at @s as @e[type=end_crystal,distance=..3] run function bcsmp:mobs/ai/ender_dragon_fight/spawn_crystal_slime
tellraw @a [{"text":"Crystals have respawned!","color":"red"}]
#------------------------------------------#