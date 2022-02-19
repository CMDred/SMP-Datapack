data modify storage bcsmp:mp_storage ReusableIds append value 0
execute store result storage bcsmp:mp_storage ReusableIds[-1] int 1 run scoreboard players operation UID MPStorage = @s PlayerID
execute at d28b2115-c99e-84c2-6e45-963d34071d44 if block ~ ~ ~ jukebox store result score CacheCheck MPStorage run data get block ~ ~ ~ RecordItem.tag.PlayerID
execute unless score UID MPStorage = CacheCheck MPStorage as d28b2115-c99e-84c2-6e45-963d34071d44 run function bcsmp:multiplayer_storage/operations/calculate_coordinates
execute at d28b2115-c99e-84c2-6e45-963d34071d44 run data modify block ~ ~ ~ RecordItem.tag.data set value {}
scoreboard players reset CacheCheck MPStorage