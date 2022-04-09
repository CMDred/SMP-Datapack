#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
execute as @a[distance=0..,sort=random,limit=2] at @s run summon marker ~ ~ ~ {Tags:["ClawTarget"]}
execute at @e[tag=ClawTarget] run particle block gray_wool ^ ^0.5 ^0.8 0.5 0.5 0.5 0.1 30 normal
#------------------------------------------#