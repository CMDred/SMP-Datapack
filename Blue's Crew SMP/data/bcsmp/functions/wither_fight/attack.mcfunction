#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#------------------ATTACK------------------#
scoreboard players set @s WitherTime 0
kill @e[tag=PlayerTarget,sort=nearest,limit=1]
kill @e[tag=PlayerTarget,distance=..50]
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace obsidian
tag @s remove WitherAttacking
summon creeper ~ ~ ~ {powered:1b,ExplosionRadius:5b,Fuse:0,ignited:1b}
#------------------------------------------#