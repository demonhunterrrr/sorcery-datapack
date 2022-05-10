# Wanda Abilities
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run summon armor_stand ~ ~ ~ {Tags:['wanda_particle'],Invulnerable:1b,Invisible:1b}
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=!wanda] run tag @s add wanda
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}}] run tp @e[tag=wanda_particle,sort=nearest,limit=1] ^ ^ ^10
execute at @e[tag=wanda_particle] run effect give @e[distance=..2,tag=!particle] wither 3 50 true
execute at @e[tag=wanda_particle] run particle minecraft:dust 255 0 0 1 ^ ^0.5 ^-0.5 1 1 1 50 50 normal
execute at @a[nbt=!{SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=wanda] run tag @s remove wanda
execute as @e[tag=wanda_particle] unless entity @a[distance=..20,tag=wanda] run kill @s

# Vishanti Abilities
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Book of Vishanti","color":"aqua","italic":"false"}'}}}},tag=!vishanti] run summon armor_stand ~ ~ ~ {Tags:['vishanti_rotate'],Invulnerable:1b,Invisible:1b}
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Book of Vishanti","color":"aqua","italic":"false"}'}}}},tag=!vishanti] run summon armor_stand ~ ~ ~ {Tags:['vishanti_particle'],Invulnerable:1b,Invisible:1b}
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Book of Vishanti","color":"aqua","italic":"false"}'}}}},tag=!vishanti] run tag @s add vishanti
execute at @a[nbt={SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Book of Vishanti","color":"aqua","italic":"false"}'}}}}] run tp @e[tag=vishanti_rotate] ~ ~2 ~
execute as @e[tag=vishanti_rotate] at @e[tag=vishanti_rotate] run tp @s ~ ~ ~ ~15 ~
execute at @e[tag=vishanti_particle] run particle minecraft:dust 1 0.7 0 2 ^ ^ ^ 0 0.5 0 500 200
execute at @e[tag=vishanti_rotate] run tp @e[tag=vishanti_particle] ^ ^-1 ^2
execute at @e[tag=vishanti_rotate] run kill @e[type=armor_stand,tag=!vishanti_rotate,tag=!vishanti_particle,nbt={Invulnerable:1b},distance=..3]
execute at @a[nbt=!{SelectedItem:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"The Dark Hold","color":"#aa0000","italic":"false"}'}}}},tag=wanda] run tag @s remove vishanti
execute as @e[tag=wanda_particle] unless entity @a[distance=..20,tag=vishanti] run kill @s
execute as @e[tag=wanda_rotate] unless entity @a[distance=..20,tag=vishanti] run kill @s
