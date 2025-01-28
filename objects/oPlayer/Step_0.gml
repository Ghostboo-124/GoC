kLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
kRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
kUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
kDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

// Calculate movement
var moveH = kRight - kLeft;
var moveV = kDown - kUp;
var Mag = sqrt((moveH * moveH)+(moveV * moveV));

if Mag == 0 {
	Mag = 1;
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