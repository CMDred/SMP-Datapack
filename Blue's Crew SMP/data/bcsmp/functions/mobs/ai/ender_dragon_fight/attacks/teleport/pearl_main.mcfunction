#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.001 30 force
execute at @a[tag=TPTarget] run particle end_rod ~ ~ ~ 1 0 1 0.01 30 normal
execute if entity @s[tag=!UUIDSet] run data modify entity @s Owner set from entity @a[tag=TPTarget,limit=1] UUID
tag @s add UUIDSet
#------------------------------------------#