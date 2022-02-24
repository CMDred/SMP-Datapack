#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
# Difficulter Scaler
scoreboard objectives add PlaytimeTicks dummy
scoreboard objectives add PlaytimeSeconds dummy
scoreboard objectives add MobBaseDamage dummy
scoreboard objectives add MobBaseHealth dummy
scoreboard objectives add MobBaseArmor dummy
scoreboard objectives add MobBaseSpeed dummy
scoreboard objectives add MobTier dummy
scoreboard objectives add PlayerMobKills dummy
scoreboard objectives add FullChance dummy
scoreboard objectives add GetPlaytime trigger

# Ender Dragon Fight
scoreboard objectives add TpToEnd trigger
scoreboard objectives add EndPoints dummy
scoreboard objectives add AddEndPoints dummy
scoreboard objectives add PlacedEyes dummy
scoreboard objectives add End_PtsRanking dummy
team add ProtectiveTotem_Melee
team add ProtectiveTotem_Ranged
team modify ProtectiveTotem_Melee color red
team modify ProtectiveTotem_Ranged color blue
bossbar add bcsmp:totem_health {"text":"Totem"}
#------------------------------------------#

