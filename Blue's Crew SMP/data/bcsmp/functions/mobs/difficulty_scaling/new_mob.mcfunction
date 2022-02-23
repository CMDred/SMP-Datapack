#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DIFFICULTY SCALING-------------#
# Grab nearest player's playtime
scoreboard players operation #PlaytimeToSpawn Temp = @p PlaytimeSeconds

# get mob's base stats
execute store result score @s MobBaseArmor run attribute @s generic.armor base get
execute store result score @s MobBaseDamage run attribute @s generic.attack_damage base get
execute store result score @s MobBaseSpeed run attribute @s generic.movement_speed base get 100
execute store result score @s MobBaseHealth run attribute @s generic.max_health base get

# set mob tier
scoreboard players set #Tier Temp 1
scoreboard players set #Cap Temp 15

# calculate playtime effect
scoreboard players set #Divisor Temp 60
scoreboard players operation #PlaytimeLevelEffect Temp = @p PlaytimeSeconds
scoreboard players operation #PlaytimeLevelEffect Temp /= #Divisor Temp
scoreboard players set #Divisor Temp 45
scoreboard players operation #PlaytimeLevelEffect Temp /= #Divisor Temp

# add playtime effect
scoreboard players operation #Tier Temp += #PlaytimeLevelEffect Temp

# calculate mob kills effect
scoreboard players set #Divisor Temp 25
scoreboard players operation #MobKillsEffect Temp = @p PlayerMobKills
scoreboard players operation #MobKillsEffect Temp /= #Divisor Temp

# mob kills effect
scoreboard players operation #Tier Temp += #MobKillsEffect Temp

# calculate cap
execute as @p if entity @s[advancements={minecraft:story/obtain_armor=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:story/shiny_armor=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/netherite_armor=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:end/kill_dragon=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:story/follow_ender_eye=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:story/enter_the_nether=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/create_beacon=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/create_full_beacon=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:adventure/adventuring_time=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/explore_nether=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/obtain_blaze_rod=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/loot_bastion=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/brew_potion=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/obtain_ancient_debris=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/all_potions=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/all_effects=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:nether/all_effects=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:end/find_end_city=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:end/elytra=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:husbandry/breed_an_animal=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:husbandry/fishy_business=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:story/smelt_iron=true}] run scoreboard players add #Cap Temp 5
execute as @p if entity @s[advancements={minecraft:story/enchant_item=true}] run scoreboard players add #Cap Temp 5

# be sure that the cap is 100, and not more
execute if score #Cap Temp matches 100.. run scoreboard players set #Cap Temp 100

# actually apply the cap
execute if score #Tier Temp > #Cap Temp run scoreboard players operation #Tier Temp = #Cap Temp 
scoreboard players operation @s MobTier = #Tier Temp



# apply tier effects
execute if entity @s[tag=!IgnoreStatScaling] run function bcsmp:mobs/difficulty_scaling/calculate_stats
execute if entity @s[tag=!IgnoreStatScaling] run function bcsmp:mobs/difficulty_scaling/set_armor

# prevent it from dropping armor
data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]




# special cases
execute if entity @s[type=slime] if predicate bcsmp:mobs/is_in_end unless data entity @s {Size:3} at @s run tp @s ~ ~-300 ~

# Register the mob
tag @s add Registered
tag @s add NewMobDelay
#------------------------------------------#

