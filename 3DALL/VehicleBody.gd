extends VehicleBody

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_engine_force(Autoload.get_float())
		if randi() % 2 == 1:
			set_brake(Autoload.get_float())
		if randi() % 2 == 1:
			set_steering(Autoload.get_float())
