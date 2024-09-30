// Arrow Keys
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspda = _right - _left;
var _vspda = _down - _up;

// WASD Keys
var _a = keyboard_check(ord("A"));
var _d = keyboard_check(ord("D"));
var _w = keyboard_check(ord("W"));
var _s = keyboard_check(ord("S"));
var _hspdw = _d - _a;
var _vspdw = _s - _w;

var _spd = 1;

if (_hspda != 0 || _vspda != 0)
{
    var _dir = point_direction(0, 0, _hspda, _vspda);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}
else if (_hspdw != 0 || _vspdw != 0)
{
	var _dir = point_direction(0, 0, _hspdw, _vspdw);
	var _xadd = lengthdir_x(_spd, _dir);
	var _yadd = lengthdir_y(_spd, _dir);
	x = x + _xadd;
	y = y + _yadd;
}

//StartAnimation(seqNuggetIdle)

//CheckAnimation()