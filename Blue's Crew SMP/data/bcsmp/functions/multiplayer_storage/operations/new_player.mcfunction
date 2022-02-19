setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:jukebox",Count:1b,tag:{data:{}}}}
execute store result block ~ ~ ~ RecordItem.tag.PlayerID int 1 run scoreboard players get UID MPStorage