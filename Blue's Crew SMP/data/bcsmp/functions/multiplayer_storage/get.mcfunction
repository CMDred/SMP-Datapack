scoreboard players operation UID MPStorage = @s PlayerID
execute at d28b2115-c99e-84c2-6e45-963d34071d44 if block ~ ~ ~ jukebox store result score CacheCheck MPStorage run data get block ~ ~ ~ RecordItem.tag.PlayerID
execute unless score UID MPStorage = CacheCheck MPStorage as d28b2115-c99e-84c2-6e45-963d34071d44 run function bcsmp:multiplayer_storage/operations/calculate_coordinates
execute at d28b2115-c99e-84c2-6e45-963d34071d44 run data modify storage bcsmp:mp_storage {} merge from block ~ ~ ~ RecordItem.tag
scoreboard players reset CacheCheck MPStorage