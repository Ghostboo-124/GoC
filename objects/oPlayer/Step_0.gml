kLeft = keyboard_check(ord("A"));
kRight = keyboard_check(ord("D"));
kUp = keyboard_check(ord("W"));
kDown = keyboard_check(ord("S"));

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