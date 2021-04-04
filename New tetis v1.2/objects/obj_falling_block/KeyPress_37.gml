///@description p2/l1/solo left
if global.player == "2" or global.player == "solo" or global.player == "l1"{
	
//gets the cords and colors of the moving block
scrlst = scr_crdlst(type,objrot,obj)
crdlst = scrlst[0]
color = scrlst[1]
xsave = scrlst[2]
ysave = scrlst[3]


n=0
i=0
while(i!=4){//checks for stales
	inst = instance_position(crdlst[i,0]+xsave-31,crdlst[i,1]+ysave-1,obj_stale)
	if (!instance_exists(inst)){
		n+=1
	}
	i+=1		
}
if(n== 4){
	obj.x-=32
}
}