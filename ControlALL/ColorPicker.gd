extends ColorPicker

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
		
		#LEAK set_pick_color(Color(randf(),randf(),randf(),randf()))
		set_edit_alpha(bool(randi()%2))
		set_raw_mode(bool(randi()%2))
		set_deferred_mode(bool(randi()%2))
		set_presets_enabled(bool(randi()%2))
		set_presets_visible(bool(randi()%2))
		#LEAK add_preset(Color(randf(),randf(),randf(),randf()))
		#CAN BE USED AFTER REMOVE LEAK ABOVE qq += str(erase_preset(get_presets()[0]))
		
		# BoxContainer
		
		set_alignment(randi() % 3)
		
		#LEAK add_spacer(bool(randi()%2))
		
#		for i in get_children():
#			i.queue_free()
		
		if Autoload.WRONG_BUGS:
			#LEAK set_pick_color(Color(randf(),randf(),randf(),randf()))
			set_edit_alpha(bool(randi()%2))
			set_raw_mode(bool(randi()%2))
			set_deferred_mode(bool(randi()%2))
			set_presets_enabled(bool(randi()%2))
			set_presets_visible(bool(randi()%2))
			#LEAK add_preset(Color(randf(),randf(),randf(),randf()))
			#CAN BE USED AFTER REMOVE LEAK ABOVE qq += str(erase_preset(Color(randf(),randf(),randf(),randf())))
			
			# BoxContainer
			
			set_alignment(randi() % 3)
			
			#LEAK add_spacer(bool(randi()%2))
			
#			for i in get_children():
#				i.queue_free()
