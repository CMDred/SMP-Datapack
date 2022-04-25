#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute as @e[type=marker,tag=FireworkExplosionChecker] at @s unless entity @e[type=firework_rocket,distance=..2] run function bcsmp:mobs/ai/creeper_firework/firework_exploded
execute as @e[type=creeper,tag=HitByFW] run function bcsmp:mobs/ai/creeper_firework/hit_creeper_main
execute if entity @e[type=marker,tag=FireworkExplosionChecker] run schedule function bcsmp:mobs/ai/creeper_firework/firework_active_tick 1t
execute if entity @e[type=creeper,tag=HitByFW] run schedule function bcsmp:mobs/ai/creeper_firework/firework_active_tick 1t
#------------------------------------------#
