#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tag @s add Phase2
playsound entity.wither.spawn master @a ~ ~ ~ 10 1 1
tellraw @a [{"text":"The Dragon is now","color":"red"},{"text":" enraged","color":"dark_red"},{"text":"!"}]
tellraw @a [{"text":"Crystals have respawned!","color":"red"}]

execute at @e[tag=CrystalPlace] run summon end_crystal
execute as @e[tag=CrystalPlace] at @s as @e[type=end_crystal,distance=..3] run function bcsmp:mobs/ai/ender_dragon_fight/spawn_crystal_slime
#------------------------------------------#