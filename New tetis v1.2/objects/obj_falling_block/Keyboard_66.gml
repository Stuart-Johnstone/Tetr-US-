///@description p1/l2 right
if global.player == "1" or global.player == "l2"{
	
//gets the cords and colors of the moving block
scrlst = scr_crdlst(type,objrot,obj)
crdlst = scrlst[0]
color = scrlst[1]
xsave = scrlst[2]
ysave = scrlst[3]



//sets vars
n=0
i=0
while(i!=4){//loops throgh the cords checking if a stale is on the right of the block
	inst = instance_position(crdlst[i,0]+xsave+33,crdlst[i,1]+ysave-1,obj_stale)//if there is an instance at the pos then it will return false
	if (!instance_exists(inst)){//makes sure there's no instance
		n+=1
	}
	i+=1		
}
if(n== 4){//if there isn't any collision then it moves the block
	obj.x+=32
}
}
keyboard_key_release(ord("B"))