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
			set_text(Autoload.get_string())
		if randi() % 2 == 1:
			set_button_icon(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_flat(Autoload.get_bool())
		if randi() % 2 == 1:
			set_clip_text(Autoload.get_bool())
		if randi() % 2 == 1:
			set_text_align(Autoload.get_int())
			
			# BaseButton
		if randi() % 2 == 1:
			set_disabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_toggle_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			set_shortcut_in_tooltip(Autoload.get_bool())
		if randi() % 2 == 1:
			set_pressed(Autoload.get_bool())
		if randi() % 2 == 1:
			set_action_mode(Autoload.get_int()) #ActionMODE
		if randi() % 2 == 1:
			set_button_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_enabled_focus_mode(Autoload.get_int()) #FocusMode
		if randi() % 2 == 1:
			set_keep_pressed_outside(Autoload.get_bool())
		if randi() % 2 == 1:
			set_shortcut(ShortCut.new())
		if randi() % 2 == 1:
			set_button_group(ButtonGroup.new())
			
		#_pressed()
		#_toggled(Autoload.get_bool())
		if randi() % 2 == 1:
			qq += str(get_draw_mode())
		if randi() % 2 == 1:
			qq += str(is_hovered())
