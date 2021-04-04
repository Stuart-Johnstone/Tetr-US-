/// @description stale for the client
/// the difference is just some stuff removed
//gives the stale a sprite
if (obj_client.color == "red"){
	sprite_index = spr_color_red
}if (obj_client.color == "cyan"){
	sprite_index = spr_color_cyan
}if (obj_client.color == "green"){
	sprite_index = spr_color_green
}if (obj_client.color == "purp"){
	sprite_index = spr_color_purp
}if (obj_client.color == "yellow"){
	sprite_index = spr_color_yellow
}if (obj_client.color == "orange"){
	sprite_index = spr_color_orange
}if (obj_client.color == "blue"){
	sprite_index = spr_color_blue
}
//snaps the block into the grid system
x = round(x/32)*32
y = round(y/32)*32