extends Timer

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_timer_process_mode(Autoload.get_int()) #TimerProcessMode
		if randi() % 2 == 1:
			set_wait_time(Autoload.get_float())
		if randi() % 2 == 1:
			set_one_shot(Autoload.get_bool())
		if randi() % 2 == 1:
			set_autostart(Autoload.get_bool())
		if randi() % 2 == 1:
			set_paused(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(get_time_left())

		if randi() % 2 == 1:
			Autoload.qq = str(is_stopped())
		if randi() % 2 == 1:
			start(Autoload.get_float())
		if randi() % 2 == 1:
			stop()
