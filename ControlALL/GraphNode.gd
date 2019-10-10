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
		
		if randi() % 2 == 1:
			set_title(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_show_close_button(bool(randi()%2))
		if randi() % 2 == 1:
			set_resizable(bool(randi()%2))
		if randi() % 2 == 1:
			set_selected(bool(randi()%2))
		if randi() % 2 == 1:
			set_comment(bool(randi()%2))
		if randi() % 2 == 1:
			set_overlay(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_slot(randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()), bool(randi()%2), randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()), Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))#Not in position
		if randi() % 2 == 1:
			clear_slot(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			clear_all_slots()
		if randi() % 2 == 1:
			qq += str(get_connection_input_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_input_count())
		if randi() % 2 == 1:
			qq += str(get_connection_input_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_input_type(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_output_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_output_count())
		if randi() % 2 == 1:
			qq += str(get_connection_output_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_connection_output_type(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_slot_color_left(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_slot_color_right(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_slot_type_left(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_slot_type_right(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_slot_enabled_left(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_slot_enabled_right(randi() % Autoload.RANGE - Autoload.RANGE / 2))
