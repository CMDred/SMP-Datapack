execute at @s run data modify block ~ ~ ~ RecordItem.tag merge from storage bcsmp:mp_storage {}
scoreboard players operation y MPStorage = UID MPStorage
scoreboard players set x MPStorage 0
scoreboard players set z MPStorage 0
execute if score y MPStorage matches 256.. run function bcsmp:multiplayer_storage/operations/search/above_y255

execute store result storage bcsmp:mp_storage Pos.TileX int 1 run scoreboard players get x MPStorage
execute store result storage bcsmp:mp_storage Pos.TileY int 1 run scoreboard players get y MPStorage
execute store result storage bcsmp:mp_storage Pos.TileZ int 1 run scoreboard players get z MPStorage

data modify entity @s {} merge from storage bcsmp:mp_storage Pos
data remove storage bcsmp:mp_storage Pos

data remove storage bcsmp:mp_storage data
execute at @s if block ~ ~ ~ air run function bcsmp:multiplayer_storage/operations/new_player