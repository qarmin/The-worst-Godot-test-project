extends HScrollBar

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		# ScrollBar
		if randi() % 2 == 1:
			set_custom_step(Autoload.get_float())

		# Range
		if randi() % 2 == 1:
			set_min(Autoload.get_float())
		if randi() % 2 == 1:
			set_max(Autoload.get_float())
		if randi() % 2 == 1:
			set_step(Autoload.get_float())
		if randi() % 2 == 1:
			set_page(Autoload.get_float())
		if randi() % 2 == 1:
			set_value(Autoload.get_float())
		if randi() % 2 == 1:
			set_as_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_exp_ratio(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_rounded_values(Autoload.get_bool())
		if randi() % 2 == 1:
			set_allow_greater(Autoload.get_bool())
		if randi() % 2 == 1:
			set_allow_lesser(Autoload.get_bool())

		if randi() % 2 == 1:
			share(self)
		if randi() % 2 == 1:
			unshare()
