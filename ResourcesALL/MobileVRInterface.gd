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
			q_MobileVRInterface.set_eye_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_iod(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_display_width(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_display_to_lens(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_oversample(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_k1(Autoload.get_float())
		if randi() % 2 == 1:
			q_MobileVRInterface.set_k2(Autoload.get_float())
				
