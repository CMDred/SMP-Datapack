execute as @e[type=marker,tag=Pulled] at @s as @e[type=item,nbt={Age:1s},sort=nearest,limit=1,distance=..3] at @s run function bcsmp:fishing/entity/spawn
kill @e[tag=Pulled]