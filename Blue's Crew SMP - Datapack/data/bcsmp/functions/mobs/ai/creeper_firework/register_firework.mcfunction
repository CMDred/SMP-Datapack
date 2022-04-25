#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
tag @s add Registered
# summon new firework rocket that is ridden by a marker (can't edit Passengers at runtime)
summon firework_rocket ~ ~ ~ {Tags:["NewRocket","Registered"],Passengers:[{id:"minecraft:marker",Tags:["FireworkExplosionChecker","NewExplosionChecker"]}]}
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] LifeTime set from entity @s LifeTime
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] Rotation set from entity @s Rotation 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] ShotAtAngle set from entity @s ShotAtAngle
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] Rotation set from entity @s Rotation 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] Motion set from entity @s Motion 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] Air set from entity @s Air 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] Owner set from entity @s Owner 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] UUID set from entity @s UUID 
data modify entity @e[type=firework_rocket,tag=NewRocket,limit=1] FireworksItem set from entity @s FireworksItem 
data modify entity @e[type=marker,tag=NewExplosionChecker,limit=1] data.Owner set from entity @s Owner 
kill @s
tag @e remove NewExplosionChecker
tag @e remove NewRocket
#------------------------------------------#