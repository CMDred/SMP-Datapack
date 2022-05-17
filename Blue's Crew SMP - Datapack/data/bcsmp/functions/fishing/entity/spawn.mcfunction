execute if entity @s[type=item,nbt={Item:{id:"minecraft:cod"}}] run summon cod ~ ~ ~ {Tags:["ToMotion"]}
execute if entity @s[type=item,nbt={Item:{id:"minecraft:salmon"}}] run summon salmon ~ ~ ~ {Tags:["ToMotion"]}
execute if entity @s[type=item,nbt={Item:{id:"minecraft:tropical_fish"}}] run summon tropical_fish ~ ~ ~ {Tags:["ToMotion"]}
execute if entity @s[type=item,nbt={Item:{id:"minecraft:pufferfish"}}] run summon pufferfish ~ ~ ~ {Tags:["ToMotion"]}
data modify entity @e[tag=ToMotion,sort=nearest,limit=1] Motion set from entity @s Motion
kill @s