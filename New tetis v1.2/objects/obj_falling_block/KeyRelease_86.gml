/// @description p1/l2 down
// on release the button resets the speed
if global.player == "2" or global.player == "solo" or global.player == "l2"{
	if 30 - obj_game_score.totlines/global.difficulty > 0{
		alarmrate = 30 - (obj_game_score.totlines/global.difficulty)
	}else{
		alarmrate = 1
	}

}