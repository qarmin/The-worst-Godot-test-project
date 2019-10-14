extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_Input : Input = Input.new()
#
#		q_Input.action_press("Rafal",Autoload.get_float())
#		q_Input.action_release(Autoload.get_string())
#
#		q_Input.add_joy_mapping(Autoload.get_string(),Autoload.get_bool())
#
#		qq += str(q_Input.get_accelerometer())
#		qq += str(q_Input.get_action_strength(Autoload.get_string()))
#		qq += str(q_Input.get_connected_joypads())
#		qq += str(q_Input.get_current_cursor_shape())
#		qq += str(q_Input.get_gravity())
#		qq += str(q_Input.get_gyroscope())
#		qq += str(q_Input.get_joy_axis(Autoload.get_int(),Autoload.get_int()))
#		#qq += str(q_Input.get_joy_axis_index_from_string(Autoload.get_string()))
#		#qq += str(q_Input.get_joy_axis_string(Autoload.get_int()))
#		#qq += str(q_Input.get_joy_button_index_from_string(Autoload.get_string()))
#		#qq += str(q_Input.get_joy_button_string(Autoload.get_int()))
#		qq += str(q_Input.get_joy_guid(Autoload.get_int()))
#		qq += str(q_Input.get_joy_name(Autoload.get_int()))
#		qq += str(q_Input.get_joy_vibration_duration(Autoload.get_int()))
#		qq += str(q_Input.get_joy_vibration_strength(Autoload.get_int()))
#		qq += str(q_Input.get_last_mouse_speed())
#		qq += str(q_Input.get_magnetometer())
#		qq += str(q_Input.get_mouse_button_mask())
#		qq += str(q_Input.get_mouse_mode())
#
#		qq += str(q_Input.is_action_just_pressed(Autoload.get_string()))
#		qq += str(q_Input.is_action_just_released(Autoload.get_string()))
#		qq += str(q_Input.is_action_pressed(Autoload.get_string()))
#		qq += str(q_Input.is_joy_button_pressed(Autoload.get_int(),Autoload.get_int()))
#		qq += str(q_Input.is_joy_known(Autoload.get_int()))
#		qq += str(q_Input.is_key_pressed(Autoload.get_int()))
#		qq += str(q_Input.is_mouse_button_pressed(Autoload.get_int()))
#
#		q_Input.joy_connection_changed(Autoload.get_int(), Autoload.get_bool(), Autoload.get_string(), Autoload.get_string()) 
#		#q_Input.parse_input_event(InputEventAction.new())
#		q_Input.remove_joy_mapping(Autoload.get_string())
#
#		#q_Input.set_custom_mouse_cursor(Autoload.loadA("Sprite.png"), randi() % 17,Autoload.get_vector2()) #CursorShape
#		q_Input.set_default_cursor_shape(randi() % 17) #CursorShape
#		q_Input.set_mouse_mode(randi() % 4) #MouseMode
#		q_Input.set_use_accumulated_input(Autoload.get_bool())
#
#		#q_Input.start_joy_vibration(Autoload.get_int(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
#		q_Input.stop_joy_vibration(Autoload.get_int())
#		#q_Input.warp_mouse_position(Autoload.get_vector2())
#
