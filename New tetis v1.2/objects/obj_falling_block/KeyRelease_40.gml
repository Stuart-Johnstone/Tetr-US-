/// @description p2/l1/solo down
// on release the button resets the speed
if global.player == "2" or global.player == "solo" or global.player == "l1"{
	if 30 -(obj_game_score.totlines/global.difficulty) > 0{
	alarmrate = 30 - (obj_game_score.totlines/global.difficulty)
	}else{
		alarmrate = 1
	}

}