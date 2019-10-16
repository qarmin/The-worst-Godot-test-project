extends CollisionShape

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_shape(BoxShape.new())
		if randi() % 2 == 1:
			set_disabled(Autoload.get_bool())
		if randi() % 2 == 1:
			make_convex_from_brothers()
		if randi() % 2 == 1:
			resource_changed(BoxShape.new())
