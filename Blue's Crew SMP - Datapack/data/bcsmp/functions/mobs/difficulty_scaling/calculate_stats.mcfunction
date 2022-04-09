#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------CONSTS-------------------#
scoreboard players set #100 Temp 100
scoreboard players set #50 Temp 50
scoreboard players set #42 Temp 42
scoreboard players set #10 Temp 10
scoreboard players set #2 Temp 2
scoreboard players set #28 Temp 28
scoreboard players set #1000 Temp 1000
scoreboard players set #4 Temp 4
#------------------DAMAGE------------------#
# +4.2% per level under 50, +2% per level above 50 (additive)
scoreboard players set #LevelsUnder50 Temp 0
execute if score @s MobTier matches ..49 run scoreboard players operation #LevelsUnder50 Temp = @s MobTier
execute if score @s MobTier matches 50.. run scoreboard players set #LevelsUnder50 Temp 50

scoreboard players set #LevelsAbove50 Temp 0
execute if score @s MobTier matches 50.. run scoreboard players operation #LevelsAbove50 Temp = @s MobTier
execute if score @s MobTier matches 50.. run scoreboard players operation #LevelsAbove50 Temp -= #50 Temp

#tellraw @p {"score":{"name":"@s","objective": "MobTier"}}
#tellraw @p {"score":{"name":"#LevelsUnder50","objective": "Temp"}}
#tellraw @p {"score":{"name":"#LevelsAbove50","objective": "Temp"}}

execute store result score #DamageBonusUnder50 Temp run scoreboard players operation #LevelsUnder50 Temp *= #10 Temp
execute store result score #DamageBonusUnder50 Temp run scoreboard players operation #LevelsUnder50 Temp *= #42 Temp
execute store result score #DamageBonusUnder50 Temp run scoreboard players operation #LevelsUnder50 Temp /= #100 Temp

execute store result score #DamageBonusAbove50 Temp run scoreboard players operation #LevelsAbove50 Temp *= #2 Temp

execute store result score #TotalBonus Temp run scoreboard players operation #DamageBonusUnder50 Temp += #DamageBonusAbove50 Temp
scoreboard players operation #TotalBonus Temp /= #10 Temp
scoreboard players add #TotalBonus Temp 10
scoreboard players operation #Base Temp = @s MobBaseDamage
scoreboard players operation #Base Temp *= #10 Temp
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base float 0.01 run scoreboard players operation #Base Temp *= #TotalBonus Temp
#------------------HEALTH------------------#
# +0.5% health per level
scoreboard players operation #Tier Temp = @s MobTier
scoreboard players operation #Tier Temp /= #4 Temp
scoreboard players add #Tier Temp 100

scoreboard players operation #Base Temp = @s MobBaseHealth
scoreboard players operation #Base Temp *= #100 Temp

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 0.0001 run scoreboard players operation #Base Temp *= #Tier Temp
execute if score @s MobTier matches 100.. store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get @s MobBaseHealth
execute store result entity @s Health float 1 run attribute @s generic.max_health get
#-------------------ARMOR------------------#
#+1% per level
scoreboard players operation #Tier Temp = @s MobTier
scoreboard players add #Tier Temp 100
scoreboard players operation #Tier Temp /= #10 Temp

scoreboard players operation #Base Temp = @s MobBaseArmor
scoreboard players operation #Base Temp *= #10 Temp

execute store result entity @s Attributes[{Name:"minecraft:generic.armor"}].Base float 0.01 run scoreboard players operation #Base Temp *= #Tier Temp
#-------------------SPEED-------------------#
#+0.28% per level
scoreboard players operation #Tier Temp = @s MobTier
scoreboard players operation #Tier Temp *= #28 Temp
scoreboard players operation #Tier Temp /= #10 Temp
scoreboard players operation #Tier Temp += #1000 Temp

scoreboard players operation #Base Temp = @s MobBaseSpeed
scoreboard players operation #Base Temp *= #Tier Temp

execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.00001 run scoreboard players get #Base Temp


#------------------------------------------#