extends ARVRAnchor

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_anchor_id(Autoload.get_int())
		if randi() % 2 == 1:
			Autoload.qq = str(get_anchor_name())
		if randi() % 2 == 1:
			Autoload.qq = str(get_is_active())
		if randi() % 2 == 1:
			Autoload.qq = str(get_mesh())
		if randi() % 2 == 1:
			Autoload.qq = str(get_plane())
		if randi() % 2 == 1:
			Autoload.qq = str(get_size())
