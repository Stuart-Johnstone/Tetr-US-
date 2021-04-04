type = argument[0]
objrot = argument[1]
obj = argument[2]

//collision cords for L piece corrects the stale alignment aswell
if ((self.type == "L")and objrot == 0){
	crdlst[0,0] = obj.x+32; crdlst[0,1] = obj.y;//formatted as x,y. based on the obj's xy 
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y-32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y-64
	color = "red"//determines the color of the stale piece
	xsave = -32//stale correction for x
	ysave = 32//stale correction for y
}if (self.type == "L"and objrot == 1){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y+32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+64; crdlst[3,1] = obj.y
	color = "red"
	xsave = -32
	ysave = 0
}if (self.type == "L"and objrot == 2){
	crdlst[0,0] = obj.x-32; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y+64
	color = "red"
	xsave = 0
	ysave = 0
}if (self.type == "L"and objrot == 3){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y-32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-64; crdlst[3,1] = obj.y
	color = "red"
	xsave = 0
	ysave = 32
}
//collision cords for R piece, corrects the stale alignment aswell
if ((self.type == "R")and objrot == 0){
	crdlst[0,0] = obj.x-32; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y-32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y-64
	color = "cyan"
	xsave = 0
	ysave = 32
}if (self.type == "R"and objrot == 1){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y-32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+64; crdlst[3,1] = obj.y
	color = "cyan"
	xsave = -32
	ysave = 32
}if (self.type == "R"and objrot == 2){
	crdlst[0,0] = obj.x+32; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y+64
	color = "cyan"
	xsave = -32
	ysave = 0
}if (self.type == "R"and objrot == 3){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y+32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-64; crdlst[3,1] = obj.y
	color = "cyan"
	xsave = 0
	ysave = 0
}
//cords for square
if (self.type == "O"){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y+32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y+32
	color = "green"
	xsave = 0
	ysave = 0
}
//cords for I
if ((self.type == "I")and objrot == 0){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y-32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y+64
	color = "purp"
	xsave = 0
	ysave = 0
}if (self.type == "I"and objrot == 1){
	crdlst[0,0] = obj.x-32; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+64; crdlst[3,1] = obj.y
	color = "purp"
	xsave = -32
	ysave = 32
}if (self.type == "I"and objrot == 2){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y+32;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y-32
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y-64
	color = "purp"
	xsave = -32
	ysave = 32
}if (self.type == "I"and objrot == 3){
	crdlst[0,0] = obj.x+32; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-64; crdlst[3,1] = obj.y
	color = "purp"
	xsave = 0
	ysave = 0
}
//cords for T block
if ((self.type == "T")and objrot == 0){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x-32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y+32
	color = "yellow"
	xsave = 0
	ysave = 0
}if (self.type == "T"and objrot == 1){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y+32
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y-32
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y
	color = "yellow"
	xsave = 0 
	ysave = 32
}if (self.type == "T"and objrot == 2){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y
	crdlst[1,0] = obj.x+32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x; crdlst[3,1] = obj.y-32
	color = "yellow"
	xsave = -32
	ysave = 32
}if (self.type == "T"and objrot == 3){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y-32
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x+32; crdlst[3,1] = obj.y
	color = "yellow"
	xsave = -32
	ysave = 0
}
//collision cords for Z piece, corrects the stale alignment aswell
if ((self.type == "Z")and objrot == 0){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y
	crdlst[1,0] = obj.x-32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x+32; crdlst[3,1] = obj.y+32
	color = "orange"
	xsave = 0
	ysave = 0
}if (self.type == "Z"and objrot == 1){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y+32
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+32; crdlst[3,1] = obj.y-32
	color = "orange"
	xsave = -32
	ysave = 32
}if (self.type == "Z"and objrot == 2){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y-32;
	crdlst[1,0] = obj.x+32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y-32
	color = "orange"
	xsave = -32
	ysave = 32
}if (self.type == "Z"and objrot == 3){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y-32
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y+32
	color = "orange"
	xsave = 0
	ysave = 0
}
//collision cords for S piece, corrects the stale alignment aswell
if ((self.type == "S")and objrot == 0){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y
	crdlst[1,0] = obj.x+32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y+32
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y+32
	color = "blue"
	xsave = 0
	ysave = 0
}if (self.type == "S"and objrot == 1){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y+32
	crdlst[2,0] = obj.x-32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x-32; crdlst[3,1] = obj.y-32
	color = "blue"
	xsave = 0
	ysave = 32
}if (self.type == "S"and objrot == 2){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y-32;
	crdlst[1,0] = obj.x-32; crdlst[1,1] = obj.y
	crdlst[2,0] = obj.x; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+32; crdlst[3,1] = obj.y-32
	color = "blue"
	xsave = -32
	ysave = 32
}if (self.type == "S"and objrot == 3){
	crdlst[0,0] = obj.x; crdlst[0,1] = obj.y;
	crdlst[1,0] = obj.x; crdlst[1,1] = obj.y-32
	crdlst[2,0] = obj.x+32; crdlst[2,1] = obj.y
	crdlst[3,0] = obj.x+32; crdlst[3,1] = obj.y+32
	color = "blue"
	xsave = -32
	ysave = 0
}

return([crdlst,color,xsave,ysave])