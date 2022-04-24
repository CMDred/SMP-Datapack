#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute as @a[scores={LinkCD=1..}] at @s run function bcsmp:shops/storage/link_main
execute as @a[scores={LinkCD=1}] run function bcsmp:shops/storage/link/expire

execute as @a if predicate bcsmp:shops/holding_storage_linker at @s run function bcsmp:shops/tools/link_sight/main

execute as @e[type=marker,tag=Storage] at @s unless block ~ ~ ~ barrel run function bcsmp:shops/storage/break
#------------------------------------------#
