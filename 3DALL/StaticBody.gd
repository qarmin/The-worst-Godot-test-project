extends StaticBody

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

			#Deprecated set_friction(Autoload.get_float())
			#Deprecated set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
		if randi() % 2 == 1:
			set_constant_linear_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_constant_angular_velocity(Autoload.get_vector3())
