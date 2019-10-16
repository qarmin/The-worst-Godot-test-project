extends HSlider

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_scrollable(Autoload.get_bool())
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				set_ticks(Autoload.get_int())
		if randi() % 2 == 1:
			set_ticks_on_borders(Autoload.get_bool())
		if randi() % 2 == 1:
			set_focus_mode(Autoload.get_int())
