extends ARVRController

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_controller_id(randi()%50 + 5)
		set_rumble(randf() * 50)
		
		qq += str(get_controller_name())
		qq += str(get_hand())
		qq += str(get_is_active())
		qq += str(get_joystick_axis(randi()%5))
		qq += str(get_joystick_id())
		qq += str(get_mesh())
		qq += str(is_button_pressed(randi()%5))
		
		if Autoload.WRONG_BUGS:
			set_controller_id(randi() % 1000 - 500)
			set_rumble(randf() * 1000 - 500)
			
			qq += str(get_controller_name())
			qq += str(get_hand())
			qq += str(get_is_active())
			qq += str(get_joystick_axis(randi() % 1000 - 500))
			qq += str(get_joystick_id())
			qq += str(get_mesh())
			qq += str(is_button_pressed(randi() % 1000 - 500))
