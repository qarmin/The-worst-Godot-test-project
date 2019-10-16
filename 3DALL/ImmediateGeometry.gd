extends ImmediateGeometry

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				add_sphere(Autoload.get_inti(20),Autoload.get_inti(20),Autoload.get_float(),Autoload.get_bool())
		if randi() % 2 == 1:
			add_vertex(Autoload.get_vector3())
		if randi() % 2 == 1:
			begin(Autoload.get_int(),Autoload.loadA("Sprite.png")) # PrimitiveType
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			end()
		if randi() % 2 == 1:
			set_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_normal(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_tangent(Autoload.get_plane())
		if randi() % 2 == 1:
			set_uv(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_uv2(Autoload.get_vector2())
