#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
summon potion ~ ~ ~ {Tags:["Temp","CustomProjectile"],Passengers:[{id:"minecraft:marker",Tags:["CustomProjectileMarker","SplashWater"]}],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,CustomPotionColor:3232689}}}
data modify entity @e[tag=CustomProjectile,sort=nearest,limit=1] Motion set from entity @s Motion
kill @s
function bcsmp:brewing/custom_potions/throw_splash_potions/main
#------------------------------------------#
