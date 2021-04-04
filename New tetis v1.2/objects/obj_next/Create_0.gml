//randomly generates a block
blocklst = ["L","R","O","I","T","Z","S"]
num = irandom_range(0,6)
block = blocklst[num]


//sets the sprite for the next piece
if (self.block == "L"){
	sprite_index = spr_L
}
if (self.block == "R"){
	sprite_index = spr_R
}
if (self.block == "O"){
	sprite_index = spr_O
}
if (self.block == "I"){
	sprite_index = spr_I
}
if (self.block == "T"){
	sprite_index = spr_T
}
if (self.block == "Z"){
	sprite_index = spr_Z
}
if (self.block == "S"){
	sprite_index = spr_S
}
//if lan coop is being used then on creation the next piece is sent from the server to the client
if global.player = "l1" or global.player = "l2"{
	buffer = buffer_create(1024,buffer_fixed,1)
	buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,10)
	buffer_write(buffer,buffer_u8, num)
	network_send_packet(obj_network_server.socket,buffer,buffer_tell(buffer))
}