var enabled = true;
var activeAnimation;
var sequenceLayer;
var activeSequence;

camera = camera_create_view(0, 0, 640, 480, 0, oPlayer, 1, 1, 32, 32);

Enable = function () {
	enabled = true;
	image_alpha = 1;
}

Disable = function () {
	enabled = false;
	alarm[0] = 1;
	var moveX = 0;
	var moveY = 0;
}

StartAnimation = function (_sequence) {
	var activeAnimation = _sequence;
	var sequenceLayer = layer_create(depth);
	var activeSequence = layer_sequence_create(sequenceLayer, x, y, _sequence);
	layer_sequence_xscale(activeSequence, image_xscale);
	
	Disable()
}

CheckAnimation = function () {
	if (activeSequence == undefined) {return};
	
	if (layer_sequence_is_finished(activeSequence)) {
		layer_sequence_destroy(activeSequence);
		layer_destroy(sequenceLayer);
		
		activeAnimation = -1;
		activeAnimation = -1;
		sequenceLayer = -1;
		
		Enable()
	}
}