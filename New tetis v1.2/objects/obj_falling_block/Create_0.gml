//randomizes seed
randomize()
//sets some basic vars
stale = false;
alarmrate = 30
alarm_set(0,alarmrate);
objrot = 0

//list of colors used for sending to the client
colorlist = ["cyan","red","green","purp","yellow","orange","blue"]

//if the next obj exists then it takes the block being displayerd by the next block
if instance_exists(obj_next){
	num = obj_next.num//gets the num from next for sending to the client
	if (obj_next.block == "L"){//creates the moving block
		obj = instance_create_layer(x,y,"Instances",obj_moving_red)
	}if (obj_next.block == "R"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_cyan)
	}if(obj_next.block == "O"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_green)
	}if(obj_next.block == "I"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_purple)
	}if(obj_next.block == "T"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_yellow)
	}if(obj_next.block == "Z"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_orange)
	}if(obj_next.block == "S"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_blue)
	}
	self.type = obj_next.block
	if global.player = "l1" or global.player = "l2"{
		buffer = buffer_create(1024,buffer_fixed,1)//creates the buffer
		buffer_seek(buffer,buffer_seek_start,0)//finds the start of the buffer
		buffer_write(buffer,buffer_u8,7)//case number
		buffer_write(buffer,buffer_u8,num)//syncs the next piece
		network_send_packet(obj_network_server.socket,buffer,buffer_tell(buffer))//sends the buffer to the client
	}
	instance_destroy(obj_next);//respawns the next block to keep it one piece ahead
	instance_create_layer(512,160,"Instances",obj_next);
}else{
	instance_create_layer(512,160,"Instances",obj_next);//creates the next block to be one piece ahead
	num = obj_next.num
	if (obj_next.block == "L"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_red)
	}if (obj_next.block == "R"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_cyan)
	}if(obj_next.block == "O"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_green)
	}if(obj_next.block == "I"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_purple)
	}if(obj_next.block == "T"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_yellow)
	}if(obj_next.block == "Z"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_orange)
	}if(obj_next.block == "S"){
		obj = instance_create_layer(x,y,"Instances",obj_moving_blue)
	}
	if global.player = "l1" or global.player = "l2"{
		buffer = buffer_create(1024,buffer_fixed,1)
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,7)
		buffer_write(buffer,buffer_u8,num)
		network_send_packet(obj_network_server.socket,buffer,buffer_tell(buffer))
	}
	self.type = obj_next.block
	instance_destroy(obj_next)
	instance_create_layer(512,160,"Instances",obj_next);
}