extends Popup

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_exclusive(Autoload.get_bool())
		if randi() % 2 == 1:
			popup(Autoload.get_rect2())
		if randi() % 2 == 1:
			popup_centered(Autoload.get_vector2())
		if randi() % 2 == 1:
			popup_centered_clamped(Autoload.get_vector2(),Autoload.get_float())
		if randi() % 2 == 1:
			popup_centered_minsize(Autoload.get_vector2())
		if randi() % 2 == 1:
			popup_centered_ratio(Autoload.get_float())

