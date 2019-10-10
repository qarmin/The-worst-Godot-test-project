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
		
		if randi() % 2 == 1:
			set_text(str(randi()%50000))
		if randi() % 2 == 1:
			set_button_icon(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			set_flat(bool(randi()%2))
		if randi() % 2 == 1:
			set_clip_text(bool(randi()%2))
		if randi() % 2 == 1:
			set_text_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
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
			set_action_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ActionMODE
		if randi() % 2 == 1:
			set_button_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_enabled_focus_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FocusMode
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
