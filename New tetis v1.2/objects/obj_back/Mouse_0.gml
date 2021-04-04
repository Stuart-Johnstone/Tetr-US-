room_goto(rm_start)
score = 0
if instance_exists(obj_network_server){
	instance_destroy(obj_network_server)
}

if instance_exists(obj_client){
	instance_destroy(obj_client)
}