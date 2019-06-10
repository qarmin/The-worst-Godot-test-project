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
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
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