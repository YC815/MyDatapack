summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b},Tags:["playerHead"]}
data modify entity @e[tag=playerHead,limit=1] Item.tag.SkullOwner set from entity @s Item.tag.pages[]
tag @e[tag=playerHead,limit=1] remove playerHead
kill @s