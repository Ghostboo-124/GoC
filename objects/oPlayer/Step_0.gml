var kLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
var kRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
var kUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
var kDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
var kFullScreen = keyboard_check(vk_f11);
depth = -y

// Calculate movement
var moveH = kRight - kLeft;
var moveV = kDown - kUp;
var Mag = sqrt((moveH * moveH)+(moveV * moveV));

if Mag == 0 {
	Mag = 1;
}

if kFullScreen {
	if isFullScreen == true {
		window_set_fullscreen(false)
		isFullScreen = false
		window_set_rectangle(originalX, originalY, originalWidth, originalHeight)
	} else {
		originalX = window_get_x()
		originalY = window_get_x()
		originalWidth = window_get_width()
		originalHeight = window_get_height()
		window_set_fullscreen(true)
		isFullScreen = true
	}
}

// Apply movement
if (!place_meeting(x, y, oTower)) {
	x += (moveH/Mag) * spd;
} else {y -= 1;}
if (!place_meeting(x, y, oTower)) {
	y += (moveV/Mag) * spd;
} else {x -= 1;}

// Animation handler
if moveH == 0 and moveV == 0 {
	sprite_index = spNuggetIdle
} else {
	sprite_index = spNugget
}
// moveH > 0 == right