extends Polygon2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Polygon2D : Polygon2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Polygon2D)
		AutoObjects.A_Node(q_Polygon2D)
		AutoObjects.A_CanvasItem(q_Polygon2D)
		AutoObjects.A_Node2D(q_Polygon2D)
		
	if randi() % 2 == 1:
		q_Polygon2D.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_Polygon2D.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Polygon2D.set_antialiased(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Polygon2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_Polygon2D.set_texture_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Polygon2D.set_texture_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Polygon2D.set_texture_rotation_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_Polygon2D.set_texture_rotation(Autoload.get_float())
	if randi() % 2 == 1:
		q_Polygon2D.set_skeleton(Autoload.get_string())
	if randi() % 2 == 1:
		q_Polygon2D.set_invert(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Polygon2D.set_invert_border(Autoload.get_float())
	if randi() % 2 == 1:
		q_Polygon2D.set_polygon(Autoload.get_poolvector2array())
	if randi() % 2 == 1:
		q_Polygon2D.set_uv(Autoload.get_poolvector2array())
	if randi() % 2 == 1:
		q_Polygon2D.set_vertex_colors(Autoload.get_poolcolorarray())
	if randi() % 2 == 1:
		q_Polygon2D.set_polygons(Autoload.get_array())
	if randi() % 2 == 1:
		q_Polygon2D._set_bones(Autoload.get_array())
	if randi() % 2 == 1:
		q_Polygon2D.set_internal_vertex_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_Polygon2D.add_bone(Autoload.get_string(),Autoload.get_poolrealarray())
	if randi() % 2 == 1:
		q_Polygon2D.erase_bone(Autoload.get_int())
	if randi() % 2 == 1:
		q_Polygon2D.clear_bones()
	if randi() % 2 == 1:
		q_Polygon2D.get_bone_count()
	if randi() % 2 == 1:
		q_Polygon2D.get_bone_path(Autoload.get_int())
	if randi() % 2 == 1:
		q_Polygon2D.get_bone_weights(Autoload.get_int())
	if randi() % 2 == 1:
		q_Polygon2D.set_bone_path(Autoload.get_int(),Autoload.get_string())
	if randi() % 2 == 1:
		q_Polygon2D.set_bone_weights(Autoload.get_int(),[Autoload.get_float(),Autoload.get_float(),Autoload.get_float()])
