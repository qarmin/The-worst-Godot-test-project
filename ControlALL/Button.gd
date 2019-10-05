extends Button

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
		
		set_text(str(randi()%50000))
		set_button_icon(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_flat(bool(randi()%2))
		set_clip_text(bool(randi()%2))
		set_text_align(randi()%3)
		
		# BaseButton
		set_disabled(bool(randi()%2))
		set_toggle_mode(bool(randi()%2))
		set_shortcut_in_tooltip(bool(randi()%2))
		set_pressed(bool(randi()%2))
		set_action_mode(randi() % 2) #ActionMODE
		set_button_mask(randi()%50)
		set_enabled_focus_mode(randi() % 3) #FocusMode
		set_keep_pressed_outside(bool(randi()%2))
		set_shortcut(ShortCut.new())
		set_button_group(ButtonGroup.new())
		
		#_pressed()
		#_toggled(bool(randi()%2))
		qq += str(get_draw_mode())
		qq += str(is_hovered())
		
		
		
		if Autoload.WRONG_BUGS:
			
			set_text(str(randi()%50000))
			set_button_icon(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_flat(bool(randi()%2))
			set_clip_text(bool(randi()%2))
			set_text_align(randi() % 1000 - 500)
			
			# BaseButton
			set_disabled(bool(randi()%2))
			set_toggle_mode(bool(randi()%2))
			set_shortcut_in_tooltip(bool(randi()%2))
			set_pressed(bool(randi()%2))
			set_action_mode(randi() % 1000 - 500) #ActionMODE
			set_button_mask(randi() % 1000 - 500)
			set_enabled_focus_mode(randi() % 1000 - 500) #FocusMode
			set_keep_pressed_outside(bool(randi()%2))
			set_shortcut(ShortCut.new())
			set_button_group(ButtonGroup.new())
			
			#_pressed()
			#_toggled(bool(randi()%2))
			qq += str(get_draw_mode())
			qq += str(is_hovered())

	else: #RANDI
		if randi() % 2 == 1:
			set_text(str(randi()%50000))
		if randi() % 2 == 1:
			set_button_icon(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_flat(bool(randi()%2))
		if randi() % 2 == 1:
			set_clip_text(bool(randi()%2))
		if randi() % 2 == 1:
			set_text_align(randi() % 1000 - 500)
			
			# BaseButton
		if randi() % 2 == 1:
			set_disabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_toggle_mode(bool(randi()%2))
		if randi() % 2 == 1:
			set_shortcut_in_tooltip(bool(randi()%2))
		if randi() % 2 == 1:
			set_pressed(bool(randi()%2))
		if randi() % 2 == 1:
			set_action_mode(randi() % 1000 - 500) #ActionMODE
		if randi() % 2 == 1:
			set_button_mask(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_enabled_focus_mode(randi() % 1000 - 500) #FocusMode
		if randi() % 2 == 1:
			set_keep_pressed_outside(bool(randi()%2))
		if randi() % 2 == 1:
			set_shortcut(ShortCut.new())
		if randi() % 2 == 1:
			set_button_group(ButtonGroup.new())
			
			#_pressed()
			#_toggled(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(get_draw_mode())
		if randi() % 2 == 1:
			qq += str(is_hovered())
