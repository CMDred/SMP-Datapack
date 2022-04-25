#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute if score @s BuyCooldown matches 1.. run scoreboard players remove @s BuyCooldown 1
execute unless block ~ ~ ~ barrel run function bcsmp:shops/container/break

# this has to be done every tick because the minecart is too fast when picking up items
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1.25] run data modify entity @s Enabled set value 0b

# prevent players from placing activator rails under a container, because if the minecart hopper is on a deactivated activator rail it'll still pickup items
execute positioned ~ ~-1 ~ if block ~ ~ ~ activator_rail run loot spawn ~ ~ ~ mine ~ ~ ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ activator_rail run setblock ~ ~ ~ air
#------------------------------------------#