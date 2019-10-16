extends VisibilityNotifier

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_aabb(Autoload.get_aabb())
		if randi() % 2 == 1:
			Autoload.qq = str(is_on_screen())
