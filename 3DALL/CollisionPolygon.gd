extends CollisionPolygon

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_depth(Autoload.get_float())
		if randi() % 2 == 1:
			set_disabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_polygon(Autoload.get_poolvector2array())
