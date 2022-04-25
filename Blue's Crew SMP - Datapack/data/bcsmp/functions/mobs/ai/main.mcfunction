#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
# Shulker
execute as @e[type=shulker,tag=Named,name=!"jeb_"] run function bcsmp:mobs/ai/shulker_color/reset
execute as @e[type=shulker,tag=Named] run function bcsmp:mobs/ai/shulker_color/main

# Dragon Fight
function bcsmp:mobs/ai/ender_dragon_fight/main

# Creeper Firework
execute as @e[type=firework_rocket,tag=!Registered] at @s run function bcsmp:mobs/ai/creeper_firework/register_firework
execute as @e[type=marker,tag=FireworkExplosionChecker] at @s unless entity @e[type=firework_rocket,distance=..2] run function bcsmp:mobs/ai/creeper_firework/firework_exploded
execute as @e[type=creeper,tag=HitByFW] run function bcsmp:mobs/ai/creeper_firework/hit_creeper_main
#------------------------------------------#