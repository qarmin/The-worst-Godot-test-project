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
		
		set_pick_color(Color(randf(),randf(),randf(),randf()))
		set_edit_alpha(bool(randi()%2))
		set_raw_mode(bool(randi()%2))
		set_deferred_mode(bool(randi()%2))
		set_presets_enabled(bool(randi()%2))
		set_presets_visible(bool(randi()%2))
		add_preset(Color(randf(),randf(),randf(),randf()))
		qq += str(erase_preset(get_presets()[0]))
		
		# BoxContainer
		
		set_alignment(randi() % 3)
# LEAK	
#		add_spacer(bool(randi()%2))
#
#		for i in range (default_number_of_children,get_child_count()):
#			get_child(i).queue_free()
		
		if Autoload.WRONG_BUGS:
			set_pick_color(Color(randf(),randf(),randf(),randf()))
			set_edit_alpha(bool(randi()%2))
			set_raw_mode(bool(randi()%2))
			set_deferred_mode(bool(randi()%2))
			set_presets_enabled(bool(randi()%2))
			set_presets_visible(bool(randi()%2))
			add_preset(Color(randf(),randf(),randf(),randf()))
			qq += str(erase_preset(Color(randf(),randf(),randf(),randf())))
			
			# BoxContainer
			
			set_alignment(randi() % 1000 - 500) # alignmode

#LEAK
#			add_spacer(bool(randi()%2))
#
#			for i in range (default_number_of_children,get_child_count()):
#				get_child(i).queue_free()

	else: #RANDI
		if randi() % 2 == 1:
			set_pick_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_edit_alpha(bool(randi()%2))
		if randi() % 2 == 1:
			set_raw_mode(bool(randi()%2))
		if randi() % 2 == 1:
			set_deferred_mode(bool(randi()%2))
		if randi() % 2 == 1:
			set_presets_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_presets_visible(bool(randi()%2))
		if randi() % 2 == 1:
			add_preset(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			qq += str(erase_preset(Color(randf(),randf(),randf(),randf())))
			
			# BoxContainer
			
		if randi() % 2 == 1:
			set_alignment(randi() % 1000 - 500) # alignmode
