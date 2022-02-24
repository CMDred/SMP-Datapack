#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["ProtectiveTotem"],Size:12,ActiveEffects:[{Id:14b,Ambient:1b,Amplifier:1b,Duration:99999,ShowIcon:0b,ShowParticles:0b},{Id:24b,Ambient:1b,Amplifier:1b,Duration:99999,ShowIcon:0b,ShowParticles:0b},{Id:11b,Ambient:1b,Amplifier:5b,Duration:99999,ShowIcon:0b,ShowParticles:0b}]}
execute as @e[tag=ProtectiveTotem] at @s run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/start 
#------------------------------------------#