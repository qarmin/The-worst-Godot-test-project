extends ImmediateGeometry3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ImmediateGeometry3D: ImmediateGeometry3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ImmediateGeometry3D)
		AutoObjects.A_Node(q_ImmediateGeometry3D)
		AutoObjects.A_Node3D(q_ImmediateGeometry3D)
		AutoObjects.A_VisualInstance3D(q_ImmediateGeometry3D)
		AutoObjects.A_GeometryInstance3D(q_ImmediateGeometry3D)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_ImmediateGeometry3D.add_sphere(Autoload.get_inti(3), Autoload.get_inti(4), Autoload.get_float(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.add_vertex(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_ImmediateGeometry3D.begin(Autoload.get_int(), temp_ImageTexture)  # PrimitiveType
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.clear()
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.end()

	if randi() % 2 == 1:
		q_ImmediateGeometry3D.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.set_normal(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.set_tangent(Autoload.get_plane())
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.set_uv(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_ImmediateGeometry3D.set_uv2(Autoload.get_vector2())
