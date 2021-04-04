type_event = async_load[? "type"];
switch(type_event){
	case network_type_data:
		//handle the data
		buffer = async_load[? "buffer"];
		scr_recieved_packet(buffer);
		break;
}