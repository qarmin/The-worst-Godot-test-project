extends GraphNode

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
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
		var qq : String = ""
		set_title(str(randi()%50))
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_show_close_button(bool(randi()%2))
		set_resizable(bool(randi()%2))
		set_selected(bool(randi()%2))
		set_comment(bool(randi()%2))
		set_overlay(randi()%3)
		set_slot(0, bool(randi()%2), 0, Color(randf(),randf(),randf(),randf()), bool(randi()%2), randi()%3, Color(randf(),randf(),randf(),randf()), load("res://Sprite" + str(randi()%4 + 1) + ".png"), load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		clear_slot(0)
		clear_all_slots()
		qq += str(get_connection_input_color(0))
#		get_connection_input_count()
#		get_connection_input_position(
#		get_connection_input_type(
#		get_connection_output_color(
#		get_connection_output_count()
#		get_connection_output_position(
#		get_connection_output_type(
#		get_slot_color_left(
#		get_slot_color_right(
#		get_slot_type_left(
#		get_slot_type_right(
#		is_slot_enabled_left(
#		is_slot_enabled_right(
		
		
		
		
		qq = qq
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x