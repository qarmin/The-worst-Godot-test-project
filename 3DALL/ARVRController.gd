extends ARVRController

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			set_controller_id(Autoload.get_randi())
		if randi() % 2 == 1:
			set_rumble(Autoload.get_randf())
			
		if randi() % 2 == 1:
			qq += str(get_controller_name())
		if randi() % 2 == 1:
			qq += str(get_hand())
		if randi() % 2 == 1:
			qq += str(get_is_active())
		if randi() % 2 == 1:
			qq += str(get_joystick_axis(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_joystick_id())
		if randi() % 2 == 1:
			qq += str(get_mesh())
		if randi() % 2 == 1:
			qq += str(is_button_pressed(Autoload.get_randi()))
