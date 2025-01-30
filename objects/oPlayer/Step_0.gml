var kLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
var kRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
var kUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
var kDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
var fullScreen = keyboard_check(vk_f11);
var isFullScreen = false

// Calculate movement
var moveH = kRight - kLeft;
var moveV = kDown - kUp;
var Mag = sqrt((moveH * moveH)+(moveV * moveV));

if Mag == 0 {
	Mag = 1;
}

if fullScreen {
	if isFullScreen == true {
		window_set_fullscreen(false)
		isFullScreen = false
		window_set_rectangle(originalX, originalY, originalWidth, originalHeight)
	} else {
		var originalX = window_get_x()
		var originalY = window_get_x()
		var originalWidth = window_get_width()
		var originalHeight = window_ge_height()
		window_set_fullscreen(true)
		isFullScreen = true
	}
}

// Apply movement
x += (moveH/Mag) * spd;
y += (moveV/Mag) * spd;

// Animation handler
if moveH == 0 and moveV == 0 {
	sprite_index = spNuggetIdle
} else {
	sprite_index = spNugget
}
// moveH > 0 == right