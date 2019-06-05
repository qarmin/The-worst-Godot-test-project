extends LineEdit

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


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
		
		set_text(str(randf()))
		set_align(randi()%4)
		set_max_length(randi()%3)
		set_editable(bool(randi()%2))
		set_secret(bool(randi()%2))
		set_secret_character(str(randi()%10))
		set_expand_to_text_length(bool(randi()%2))
		set_focus_mode(randi()%3)
		set_context_menu_enabled(bool(randi()%2))
		set_clear_button_enabled(bool(randi()%2))
		set_placeholder(str(randf()))
		set_placeholder_alpha(randf() * 50)
		cursor_set_blink_enabled(bool(randi()%2))
		cursor_set_blink_speed(randf() * 50)
		set_cursor_position(randi()%53)
		
		append_at_cursor(str(randf()))
		deselect()
		qq += str(get_menu())
		qq += str(menu_option(randi()%MENU_MAX))
		select(randi()%2, randi()%10 + 2)
		select_all()
		
		clear()
		
		qq = qq
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x