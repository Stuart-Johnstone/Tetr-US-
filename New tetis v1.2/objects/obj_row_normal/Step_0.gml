/// @description Insert description here
// You can write your code in this editor
i=0
b =0 
n=0
//counts the ammount of blocks in the row
while (i < 10){
	if (position_meeting(x+(32*i)+10,y-10,obj_stale)){
		n += 1
	}
	i+=1
}
//if the row is x long then it clears it
if (n >= 10){
	i = 0
	while(i<10){
		inst = instance_position(x+(32*i)+10,y-10,obj_stale)
		instance_destroy(inst)
		i+=1
	}
	obj_game_score.lines += 1
}



//checks for an empty row underneath
i=0
while(i !=10){
	if (!instance_exists(instance_position(x+(32*i)+10,y+10,obj_stale)) and n>0){
		b += 1
	}

	i+=1
}

//moves the all of the blocks in the row
if (b >= 10){
	i = 0
	while(i<10){
		inst = instance_position(x+(32*i)+10,y-10,obj_stale)
		
		if(instance_exists(inst)){
			inst.y +=32
		}
		i+=1
	}
}