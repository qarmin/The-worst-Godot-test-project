extends LineEdit

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
		qq += str(menu_option(randi()%MENU_MAX))#HMMM A LITTLE TOO SLOW
		select(randi()%2, randi()%10 + 2)
		select_all()
		
		clear()
		
		if Autoload.WRONG_BUGS:
			set_text(str(randf()))
			set_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_max_length(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_editable(bool(randi()%2))
			set_secret(bool(randi()%2))
			set_secret_character(str(randi()%10))
			set_expand_to_text_length(bool(randi()%2))
			set_focus_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_context_menu_enabled(bool(randi()%2))
			set_clear_button_enabled(bool(randi()%2))
			set_placeholder(str(randf()))
			set_placeholder_alpha(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			cursor_set_blink_enabled(bool(randi()%2))
			cursor_set_blink_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			set_cursor_position(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
			append_at_cursor(str(randf()))
			deselect()
			qq += str(get_menu())
			qq += str(menu_option(randi() % Autoload.RANGE - Autoload.RANGE / 2))#HMMM A LITTLE TOO SLOW
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			select_all()
			
			clear()

	else: #RANDI
		if randi() % 2 == 1:
			set_text(str(randf()))
		if randi() % 2 == 1:
			set_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_max_length(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_editable(bool(randi()%2))
		if randi() % 2 == 1:
			set_secret(bool(randi()%2))
		if randi() % 2 == 1:
			set_secret_character(str(randi()%10))
		if randi() % 2 == 1:
			set_expand_to_text_length(bool(randi()%2))
		if randi() % 2 == 1:
			set_focus_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_context_menu_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_clear_button_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_placeholder(str(randf()))
		if randi() % 2 == 1:
			set_placeholder_alpha(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			cursor_set_blink_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			cursor_set_blink_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_cursor_position(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			append_at_cursor(str(randf()))
		if randi() % 2 == 1:
			deselect()
		if randi() % 2 == 1:
			qq += str(get_menu())
		if randi() % 2 == 1:
			qq += str(menu_option(randi() % Autoload.RANGE - Autoload.RANGE / 2))#HMMM A LITTLE TOO SLOW
		if randi() % 2 == 1:
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			select_all()
			
		if randi() % 2 == 1:
			clear()
