extends Container

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			queue_sort()
		if randi() % 2 == 1:
			fit_child_in_rect(self, Autoload.get_rect2())
