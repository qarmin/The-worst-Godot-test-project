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
			set_title(str(Autoload.get_randi()))
		if randi() % 2 == 1:
			set_offset(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_show_close_button(bool(randi()%2))
		if randi() % 2 == 1:
			set_resizable(bool(randi()%2))
		if randi() % 2 == 1:
			set_selected(bool(randi()%2))
		if randi() % 2 == 1:
			set_comment(bool(randi()%2))
		if randi() % 2 == 1:
			set_overlay(Autoload.get_randi())
		if randi() % 2 == 1:
			set_slot(Autoload.get_randi(), bool(randi()%2), Autoload.get_randi(), Color(randf(),randf(),randf(),randf()), bool(randi()%2), Autoload.get_randi(), Color(randf(),randf(),randf(),randf()), Autoload.loadA("res://RES/Sprite.png"), Autoload.loadA("res://RES/Sprite.png"))#Not in position
		if randi() % 2 == 1:
			clear_slot(Autoload.get_randi())
		if randi() % 2 == 1:
			clear_all_slots()
		if randi() % 2 == 1:
			qq += str(get_connection_input_color(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_input_count())
		if randi() % 2 == 1:
			qq += str(get_connection_input_position(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_input_type(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_output_color(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_output_count())
		if randi() % 2 == 1:
			qq += str(get_connection_output_position(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_connection_output_type(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_slot_color_left(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_slot_color_right(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_slot_type_left(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_slot_type_right(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(is_slot_enabled_left(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(is_slot_enabled_right(Autoload.get_randi()))
