extends Node2D

var q_MobileVRInterface : MobileVRInterface = MobileVRInterface.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		if randi() % 2 == 1:
			q_MobileVRInterface = MobileVRInterface.new()
			
		if randi() % 2 == 1:
			q_MobileVRInterface.set_eye_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_iod(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_display_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_display_to_lens(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_oversample(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_k1(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MobileVRInterface.set_k2(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
