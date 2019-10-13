extends ColorPicker

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

var default_number_of_children : int = 0

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	default_number_of_children = get_child_count()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		if randi() % 2 == 1:
			set_pick_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_edit_alpha(Autoload.get_bool())
		if randi() % 2 == 1:
			set_raw_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			set_deferred_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			set_presets_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_presets_visible(Autoload.get_bool())
		if randi() % 2 == 1:
			add_preset(Autoload.get_color())
		if randi() % 2 == 1:
			qq += str(erase_preset(Autoload.get_color()))
			
			# BoxContainer
			
		if randi() % 2 == 1:
			set_alignment(Autoload.get_int()) # alignmode
#LEAK
#			add_spacer(Autoload.get_bool())
#
#			for i in range (default_number_of_children,get_child_count()):
#				get_child(i).queue_free()
