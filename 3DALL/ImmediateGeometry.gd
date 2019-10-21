extends ImmediateGeometry

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		AutoObjects.A_GeometryInstance(self)
		nodeFunction(self)

func nodeFunction(q_ImmediateGeometry : ImmediateGeometry, can_reset : bool = false) -> void:

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_ImmediateGeometry.add_sphere(Autoload.get_inti(3),Autoload.get_inti(4),Autoload.get_float(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_ImmediateGeometry.add_vertex(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ImmediateGeometry.begin(Autoload.get_int(),Autoload.loadA("Sprite.png")) # PrimitiveType
	if randi() % 2 == 1:
		q_ImmediateGeometry.clear()
	if randi() % 2 == 1:
		q_ImmediateGeometry.end()
	if randi() % 2 == 1:
		q_ImmediateGeometry.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ImmediateGeometry.set_normal(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ImmediateGeometry.set_tangent(Autoload.get_plane())
	if randi() % 2 == 1:
		q_ImmediateGeometry.set_uv(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_ImmediateGeometry.set_uv2(Autoload.get_vector2())
