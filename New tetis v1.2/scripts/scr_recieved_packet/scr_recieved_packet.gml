
buffer = argument[0]
message_id = buffer_read(buffer, buffer_u8)
switch(message_id){
	//cases 1-6 are sent to the server
	//cases 7-10 are recieved by the client
	case 1:
	//simulates a player 2 left 
		keyboard_key_press(ord("C"))
		break;
	case 2:
	//simulates a player 2 right
		keyboard_key_press(ord("B"))
		break;
	case 3:
	//simulates a player 2 down press
		keyboard_key_press(ord("V"))
		break;
	case 4:
	//simulates a player 2 down release
		keyboard_key_release(ord("V"))
		break;
	case 5:
	//simulates a player 2 left rotation
		keyboard_key_press(ord("O"))
		break;
	case 6:
	//simulates a player 2 right rotation
		keyboard_key_press(ord("P"))
		break;
	case 7:
	//this case sets the sprite for the falling piece through sending a number corralating to a list
		num = buffer_read(buffer, buffer_u8)
		blocklst = ["L","R","O","I","T","Z","S"]
		num = blocklst[num]
		//sets the sprite and assigns it a var
		if (num == "L"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_red)
		}
		if (num == "R"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_cyan)
		}
		if (num == "O"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_green)
		}
		if (num == "I"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_purple)
		}
		if (num == "T"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_yellow)
		}
		if (num == "Z"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_orange)
		}
		if (num == "S"){
			obj_client.obj = instance_create_layer(255,0,"instances",obj_moving_blue)
		}
		break;
	case 8:
	//this case controlls the falling pieces rotation and x/y cordinates
		obj_client.obj.x = buffer_read(buffer, buffer_u16)
		obj_client.obj.y = buffer_read(buffer, buffer_u16)
		obj_client.obj.image_angle = buffer_read(buffer, buffer_s16)
		score = buffer_read(buffer,buffer_u32)
		break;
	case 9:
		//gets the x/y cords for a the stale blocks and destroys the falling block
	
		if instance_exists(obj_client.obj){
			instance_destroy(obj_client.obj)
		}
		
		colorlist = ["cyan","red","green","purp","yellow","orange","blue"]
		obj_client.color = colorlist[buffer_read(buffer,buffer_u8)]
		xstore = buffer_read(buffer,buffer_u16)
		ystore = buffer_read(buffer,buffer_u16)
		
		stale = instance_create_layer(xstore,ystore,"instances",obj_stale_client)
		break;
	case 10:
		//creates the next piece through a corralating number
		num = buffer_read(buffer,buffer_u8)
		blocklst = ["L","R","O","I","T","Z","S"]
		block = blocklst[num]
		if (block == "L"){
			obj_next_client.sprite_index = spr_L
		}
		if (block == "R"){
			obj_next_client.sprite_index = spr_R
		}
		if (block == "O"){
			obj_next_client.sprite_index = spr_O
		}
		if (block == "I"){
			obj_next_client.sprite_index = spr_I
		}
		if (block == "T"){
			obj_next_client.sprite_index = spr_T
		}
		if (block == "Z"){
			obj_next_client.sprite_index = spr_Z
		}
		if (block == "S"){
			obj_next_client.sprite_index = spr_S
		}
		break;
		
}