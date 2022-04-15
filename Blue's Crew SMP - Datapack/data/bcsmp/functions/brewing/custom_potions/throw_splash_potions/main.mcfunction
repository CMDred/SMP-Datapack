#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
execute as @e[type=potion,tag=CustomProjectile] store result entity @s Air short 1 run time query gametime
execute as @e[type=marker,tag=CustomProjectileMarker] at @s positioned ~ ~-0.1875 ~ unless entity @e[type=potion,tag=CustomProjectile,distance=..0.1875] positioned ~ ~0.1875 ~ run function bcsmp:brewing/custom_potions/throw_splash_potions/collision
execute if entity @e[type=marker,tag=CustomProjectileMarker] run schedule function bcsmp:brewing/custom_potions/throw_splash_potions/main 1t
#------------------------------------------#
