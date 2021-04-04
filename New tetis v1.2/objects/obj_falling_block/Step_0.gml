///collision cords for all pieces, these are used for both collision dection and creating stales. the stales are also created here

//uses the script to get the cordinates
scrlst = scr_crdlst(type,objrot,obj)
crdlst = scrlst[0]
color = scrlst[1]
xsave = scrlst[2]
ysave = scrlst[3]

if global.player = "l1" or global.player = "l2"{
	buffer = buffer_create(1024,buffer_fixed,1)
	buffer_seek(buffer,buffer_seek_start,0)//finds start of the buffer
	buffer_write(buffer,buffer_u8,8)//case number
	buffer_write(buffer,buffer_u16,obj.x)//syncs the obj x/y pos and the image angle
	buffer_write(buffer,buffer_u16,obj.y)
	buffer_write(buffer,buffer_s16,obj.image_angle)
	buffer_write(buffer,buffer_u32,score)//syncs the score
	network_send_packet(obj_network_server.socket,buffer,buffer_tell(buffer))//sends the buffer
}
//creates the stales
if(stale == true){
	i=0;
	while i!=7{
		if colorlist[i] == color{
			colornum = i
			break;
		}
		i+=1
	}
	i=0
	instance_destroy(obj)//dels moving obj
	while(i!=4){//loops throgh the cords creating stales
		instance_create_layer(crdlst[i,0]+xsave,crdlst[i,1]+ysave,"Instances",obj_stale)//creates the stale block and implements corrections
		if global.player == "l1" or global.player == "l2"{
			buffer = buffer_create(1024,buffer_fixed,1)
			show_debug_message(string(crdlst[i,0]))
			buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,9)//9
			buffer_write(buffer,buffer_u8,colornum)//9,color
			buffer_write(buffer,buffer_u16,crdlst[i,0]+xsave)//x
			buffer_write(buffer,buffer_u16,crdlst[i,1]+ysave)//y
			network_send_packet(obj_network_server.socket,buffer,buffer_tell(buffer))
		}
		i+=1
	}
	instance_create_layer(self.x,self.y,"Instances",obj_falling_block);//creates new falling blck and also new next
	instance_destroy(self);//dels self

	switch(global.player){//switches the modes betweeen players
		case "solo":
			break;
		case "1":
			global.player = "2"
			break;
		case "2":
			global.player = "1"
			break;
		case "l1":
			global.player = "l2"
			break;
		case "l2":
			global.player = "l1"
			break;
	}

}
