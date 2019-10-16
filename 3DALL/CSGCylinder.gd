extends CSGCylinder

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_height(Autoload.get_float())
		if randi() % 2 == 1:
			set_sides(Autoload.get_inti(5))
		if randi() % 2 == 1:
			set_cone(Autoload.get_bool())
		if randi() % 2 == 1:
			set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_material(Autoload.loadA("SpatialMaterial.tres"))
