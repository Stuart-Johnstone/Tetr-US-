//gives the stale a sprite
if (obj_falling_block.color == "red"){
	sprite_index = spr_color_red
}if (obj_falling_block.color == "cyan"){
	sprite_index = spr_color_cyan
}if (obj_falling_block.color == "green"){
	sprite_index = spr_color_green
}if (obj_falling_block.color == "purp"){
	sprite_index = spr_color_purp
}if (obj_falling_block.color == "yellow"){
	sprite_index = spr_color_yellow
}if (obj_falling_block.color == "orange"){
	sprite_index = spr_color_orange
}if (obj_falling_block.color == "blue"){
	sprite_index = spr_color_blue
}
//snaps the block into the grid system
x = round(x/32)*32
y = round(y/32)*32