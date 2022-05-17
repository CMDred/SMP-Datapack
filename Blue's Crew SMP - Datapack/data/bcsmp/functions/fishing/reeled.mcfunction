scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function bcsmp:random/range_lcg
execute if score out RandMath matches ..20 run function bcsmp:fishing/entity/fish

advancement revoke @s only bcsmp:fishing/catch