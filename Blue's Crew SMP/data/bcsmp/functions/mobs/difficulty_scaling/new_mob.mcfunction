#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DIFFICULTY SCALING-------------#
# Grab nearest player's playtime
scoreboard players operation #PlaytimeToSpawn Temp = @a[sort=nearest,limit=1] PlaytimeSeconds

# get mob's base stats
execute store result score @s MobBaseArmor run attribute @s generic.armor base get
execute store result score @s MobBaseDamage run attribute @s generic.attack_damage base get
execute store result score @s MobBaseSpeed run attribute @s generic.movement_speed base get
execute store result score @s MobBaseHealth run attribute @s generic.max_health base get

# set mob tier

# Register the mob
tag @s add Registered
#------------------------------------------#

