/// @description causes movedown

//loops the alarm
alarm_set(0,alarmrate);
if 30 -(obj_game_score.totlines/global.difficulty) > 0{
	//the rate at which the alarm is called is based on the total lines removed and the game difficulty
	alarmrate = 30 - obj_game_score.totlines/global.difficulty
}else{
	alarmrate = 1//1 row per frame
}

n=0
i=0
while(i!=4){//loops throgh the cords creating stales
	inst = instance_position(crdlst[i,0]+xsave+1,crdlst[i,1]+ysave+31,obj_stale)
	if (!instance_exists(inst)){
		n+=1
	}
	i+=1		
}
if(n==4){//moves the moving block down
	obj.y +=32

}else{
	stale = true
}