extends Node2D

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
		if !Autoload.RANDI:
			pass
		
#		var q_Input : Input = Input.new()
#
#		q_Input.action_press("Rafal",randf() * 50)
#		q_Input.action_release("Roman")
#
#		q_Input.add_joy_mapping("Lif",bool(randi()%2))
#
#		qq += str(q_Input.get_accelerometer())
#		qq += str(q_Input.get_action_strength("Jestes?"))
#		qq += str(q_Input.get_connected_joypads())
#		qq += str(q_Input.get_current_cursor_shape())
#		qq += str(q_Input.get_gravity())
#		qq += str(q_Input.get_gyroscope())
#		qq += str(q_Input.get_joy_axis(randi()%50,randi()%50))
#		#qq += str(q_Input.get_joy_axis_index_from_string(str(randi() % 100000)))
#		#qq += str(q_Input.get_joy_axis_string(randi()%50))
#		#qq += str(q_Input.get_joy_button_index_from_string("Przycisk"))
#		#qq += str(q_Input.get_joy_button_string(randi()%50))
#		qq += str(q_Input.get_joy_guid(randi()%50))
#		qq += str(q_Input.get_joy_name(randi()%50))
#		qq += str(q_Input.get_joy_vibration_duration(randi()%50))
#		qq += str(q_Input.get_joy_vibration_strength(randi()%50))
#		qq += str(q_Input.get_last_mouse_speed())
#		qq += str(q_Input.get_magnetometer())
#		qq += str(q_Input.get_mouse_button_mask())
#		qq += str(q_Input.get_mouse_mode())
#
#		qq += str(q_Input.is_action_just_pressed("Wredny"))
#		qq += str(q_Input.is_action_just_released("Kol"))
#		qq += str(q_Input.is_action_pressed("Zdjecia"))
#		qq += str(q_Input.is_joy_button_pressed(randi()%50,randi()%50))
#		qq += str(q_Input.is_joy_known(randi()%50))
#		qq += str(q_Input.is_key_pressed(randi()%50))
#		qq += str(q_Input.is_mouse_button_pressed(randi()%50))
#
#		q_Input.joy_connection_changed(randi()%50, bool(randi()%2), "Studnia", "Olnowek") 
#		#q_Input.parse_input_event(InputEvent.new())
#		q_Input.remove_joy_mapping("Grace")
#
#		#q_Input.set_custom_mouse_cursor(Autoload.loadA("res://RES/Sprite1.png",false), randi() % 17,Vector2(randf() * 50,randf() * 50)) #CursorShape
#		q_Input.set_default_cursor_shape(randi() % 17) #CursorShape
#		q_Input.set_mouse_mode(randi() % 4) #MouseMode
#		q_Input.set_use_accumulated_input(bool(randi()%2))
#
#		#q_Input.start_joy_vibration(randi()%50,randf() * 50,randf() * 50,randf() * 50)
#		q_Input.stop_joy_vibration(randi()%50)
#		#q_Input.warp_mouse_position(Vector2(randf() * 50,randf() * 50))
#
#		if Autoload.WRONG_BUGS:
#			pass
