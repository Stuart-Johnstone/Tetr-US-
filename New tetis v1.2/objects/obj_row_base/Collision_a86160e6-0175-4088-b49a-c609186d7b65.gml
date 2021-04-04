/// @description Insert description here
// You can write your code in this editor
i=0
b=0 
n=0
//counts the ammount of blocks in the row
while (i != 10){
	if (position_meeting(self.x+(32*i)+10,self.y-10,obj_stale_client)){
		n += 1
	}
	i+=1
}
//if the row is x long then it clears it
if (n == 10){
	i = 0
	while(i<10){
		inst = instance_position(self.x+(32*i)+10,self.y-10,obj_stale_client)
		instance_destroy(inst)
		i+=1
	}
}
