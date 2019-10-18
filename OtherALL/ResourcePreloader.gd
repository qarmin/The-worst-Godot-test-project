extends ResourcePreloader

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			add_resource(Autoload.get_string(), Autoload.loadA("Sprite.png"))

		if randi() % 2 == 1:
			Autoload.qq = str(get_resource(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_resource_list())

		if randi() % 2 == 1:
			Autoload.qq = str(has_resource(Autoload.get_string()))
		if randi() % 2 == 1:
			rename_resource(Autoload.get_string(),Autoload.get_string())
		if randi() % 2 == 1:
			remove_resource(Autoload.get_string()) ## Zmiana kolejnosci
