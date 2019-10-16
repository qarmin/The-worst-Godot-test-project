extends ScrollContainer

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_enable_h_scroll(Autoload.get_bool())
		if randi() % 2 == 1:
			set_h_scroll(Autoload.get_int())
		if randi() % 2 == 1:
			set_enable_v_scroll(Autoload.get_bool())
		if randi() % 2 == 1:
			set_v_scroll(Autoload.get_int())
		if randi() % 2 == 1:
			set_deadzone(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(get_h_scrollbar())
		if randi() % 2 == 1:
			Autoload.qq = str(get_v_scrollbar())
