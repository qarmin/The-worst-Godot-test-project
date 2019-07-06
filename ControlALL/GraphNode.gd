extends GraphNode

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
		
		set_title(str(randi()%50))
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_show_close_button(bool(randi()%2))
		set_resizable(bool(randi()%2))
		set_selected(bool(randi()%2))
		set_comment(bool(randi()%2))
		set_overlay(randi()%3)
		set_slot(0, bool(randi()%2), 0, Color(randf(),randf(),randf(),randf()), bool(randi()%2), randi()%3, Color(randf(),randf(),randf(),randf()), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		clear_slot(0)
		clear_all_slots()
		#qq += str(get_connection_input_color(0))
#		qq += str(get_connection_input_count()
#		qq += str(get_connection_input_position(
#		qq += str(get_connection_input_type(
#		qq += str(get_connection_output_color(
#		qq += str(get_connection_output_count()
#		qq += str(get_connection_output_position(
#		qq += str(get_connection_output_type(
#		qq += str(get_slot_color_left(
#		qq += str(get_slot_color_right(
#		qq += str(get_slot_type_left(
#		qq += str(get_slot_type_right(
#		qq += str(is_slot_enabled_left(
#		qq += str(is_slot_enabled_right(
		
		
		if Autoload.WRONG_BUGS:
			set_title(str(randi() % 1000 - 500))
			set_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_show_close_button(bool(randi()%2))
			set_resizable(bool(randi()%2))
			set_selected(bool(randi()%2))
			set_comment(bool(randi()%2))
			set_overlay(randi() % 1000 - 500)
			set_slot(randi() % 1000 - 500, bool(randi()%2), randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()), bool(randi()%2), randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))#Not in position
			clear_slot(randi() % 1000 - 500)
			clear_all_slots()
			qq += str(get_connection_input_color(randi() % 1000 - 500))
			qq += str(get_connection_input_count())
			qq += str(get_connection_input_position(randi() % 1000 - 500))
			qq += str(get_connection_input_type(randi() % 1000 - 500))
			qq += str(get_connection_output_color(randi() % 1000 - 500))
			qq += str(get_connection_output_count())
			qq += str(get_connection_output_position(randi() % 1000 - 500))
			qq += str(get_connection_output_type(randi() % 1000 - 500))
			qq += str(get_slot_color_left(randi() % 1000 - 500))
			qq += str(get_slot_color_right(randi() % 1000 - 500))
			qq += str(get_slot_type_left(randi() % 1000 - 500))
			qq += str(get_slot_type_right(randi() % 1000 - 500))
			qq += str(is_slot_enabled_left(randi() % 1000 - 500))
			qq += str(is_slot_enabled_right(randi() % 1000 - 500))
