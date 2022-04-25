#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players add @s Temp 1
execute if score @s Temp matches 50 run data modify entity @s Motion[1] set value 2.6d
execute if score @s Temp matches 59 run function bcsmp:mobs/ai/creeper_firework/find_killer
execute if score @s Temp matches 59 at @s run summon firework_rocket ~ ~ ~ {OnGround: 0b, Air: 300s,CustomNameVisible: 43, Invulnerable: 0b, FireworksItem: {id: "minecraft:firework_rocket", tag: {Fireworks:{Explosions:[{Type:3,Flicker:1,Trail:1,Colors:[I;4312372],FadeColors:[I;3887386]},{Type:1,Flicker:0,Trail:1,Colors:[I;13701907],FadeColors:[I;16775944]}],Flight:1}}, Count: 1b}}
execute if score @s Temp matches 59 run kill @s
#------------------------------------------#