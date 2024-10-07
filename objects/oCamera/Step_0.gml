if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/25;
y += (yTo - y)/25;

if camshake == true {
		shakeduration -= 1;
		x = x + random_range(-shakepower,shakepower);
		y = y + random_range(-shakepower,shakepower);
	if shakeduration <= 0 {
		camshake = false;
		shakeduration = 30;
	}
}

camera_set_view_pos(view_camera[0],x-(camWidth/2),y-(camHeight/2));