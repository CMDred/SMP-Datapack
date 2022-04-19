#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
summon potion ~ ~ ~ {Tags:["Temp","CustomProjectile"],Passengers:[{id:"minecraft:marker",Tags:["CustomProjectileMarker","SplashFrostResistance"]}],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Enchantments:[{}],CustomPotionColor:7733238}}}
data modify entity @e[type=potion,tag=CustomProjectile,sort=nearest,limit=1] Motion set from entity @s Motion
kill @s
function bcsmp:brewing/custom_potions/throw_splash_potions/main
#------------------------------------------#
