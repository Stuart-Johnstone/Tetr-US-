type_event = async_load[? "type"];
switch(type_event){
	case network_type_connect:
		//add the client to the socket var
		if(socket == noone){
			socket = async_load[? "socket"];
		}
		room_goto(rm_server)
		break;
	case network_type_disconnect:
		//remove the client from the socket var
		socket = noone;
		break;
	case network_type_data:
		//handle the data
		buffer = async_load[? "buffer"];
		scr_recieved_packet(buffer);
		
		break;
}
