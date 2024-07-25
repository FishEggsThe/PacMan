var horizontalDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var verticalDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"))

var currTileMap = layer_tilemap_get_id("Tiles_Maze")
var xSpeed = horizontalDirection*moveSpeed
var ySpeed = verticalDirection*moveSpeed

// X Collision
if place_meeting(x + xSpeed, y, currTileMap)
{
	var _pixelCheck = sign(xSpeed);
	while !place_meeting(x+_pixelCheck, y, currTileMap)
	{
		x += _pixelCheck;
	}
		
	xSpeed = 0;
}
// Y Collision
if place_meeting(x + xSpeed, y + ySpeed, currTileMap)
{
	var _pixelCheck = sign(ySpeed);
	while !place_meeting(x+xSpeed, y+_pixelCheck, currTileMap)
	{
		y += _pixelCheck;
	}
	
	ySpeed = 0;
}

x += xSpeed
y += ySpeed