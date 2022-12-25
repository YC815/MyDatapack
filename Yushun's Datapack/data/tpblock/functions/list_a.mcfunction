#傳送列表[鑽石]
tp @e[type=item_frame,tag=tp_block_1,tag=diamond,limit=1]
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:0b}] at @s run tp @a[distance=..1] ~ ~ ~ 180 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:1b}] at @s run tp @a[distance=..1] ~ ~ ~ -135 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:2b}] at @s run tp @a[distance=..1] ~ ~ ~ -90 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:3b}] at @s run tp @a[distance=..1] ~ ~ ~ -45 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:4b}] at @s run tp @a[distance=..1] ~ ~ ~ 0 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:5b}] at @s run tp @a[distance=..1] ~ ~ ~ 45 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:6b}] at @s run tp @a[distance=..1] ~ ~ ~ 90 0
execute as @e[type=item_frame,tag=tp_block_1,tag=diamond,nbt={ItemRotation:7b}] at @s run tp @a[distance=..1] ~ ~ ~ 135 0
execute as @a[tag=!set_c] at @s run particle portal ~ ~1 ~ 1 1 1 1 100 normal
tellraw @s {"text":"傳送完成!","bold":true,"color":"green"}