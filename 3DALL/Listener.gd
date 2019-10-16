extends Listener

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			clear_current()
		if randi() % 2 == 1:
			Autoload.qq = str(get_listener_transform())
		if randi() % 2 == 1:
			Autoload.qq = str(is_current())
		if randi() % 2 == 1:
			make_current()
