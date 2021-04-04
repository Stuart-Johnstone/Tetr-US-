/// @description p2/l2 turn right
if global.player == "2" or global.player == "l2"{

//makes the rotation go between 0-3
prevrot = objrot
self.objrot +=1
if (objrot == 4){
	objrot = 0
}

//gets the cords and colors of the moving block
scrlst = scr_crdlst(type,objrot,obj)
crdlst = scrlst[0]
color = scrlst[1]
xsave = scrlst[2]
ysave = scrlst[3]

n=0
i=0
while(i!=4){//checks for stales
	inst = instance_position(crdlst[i,0]+xsave+1,crdlst[i,1]+ysave-1,obj_stale)
	if (!instance_exists(inst)){
		n+=1
	}
	inst = instance_position(crdlst[i,0]+xsave,crdlst[i,1]+ysave,Obj_wallL)
	if (!instance_exists(inst)){
		n+=1
	}
	inst = instance_position(crdlst[i,0]+xsave,crdlst[i,1]+ysave,Obj_wallR)
	if (!instance_exists(inst)){
		n+=1
	}
	inst = instance_position(crdlst[i,0]+xsave,crdlst[i,1]+ysave,Obj_wallD)
	if (!instance_exists(inst)){
		n+=1
	}
	i+=1		
}
if(n!= 16){
	objrot = prevrot
}else{
	obj.image_angle -= 90
	
}
}
keyboard_key_release(ord("P"))