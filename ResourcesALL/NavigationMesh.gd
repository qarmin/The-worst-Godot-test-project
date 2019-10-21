extends Node2D

var q_NavigationMesh : NavigationMesh = NavigationMesh.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_NavigationMesh = NavigationMesh.new()

		if randi() % 2 == 1:
			q_NavigationMesh.set_sample_partition_type(Autoload.get_int()) # SAMPLE_PARTITION
		if randi() % 2 == 1:
			q_NavigationMesh.set_parsed_geometry_type(Autoload.get_int()) #PARSED_GEOMETRY
		if randi() % 2 == 1:
			q_NavigationMesh.set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			q_NavigationMesh.set_cell_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_cell_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_max_climb(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_max_slope(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_region_min_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_region_merge_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_edge_max_length(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_edge_max_error(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_verts_per_poly(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_detail_sample_distance(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_detail_sample_max_error(Autoload.get_float())
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_low_hanging_obstacles(Autoload.get_bool())
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_ledge_spans(Autoload.get_bool())
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_walkable_low_height_spans(Autoload.get_bool())

		if randi() % 2 == 1:
			q_NavigationMesh.add_polygon( Autoload.get_poolintarray())
		if randi() % 2 == 1:
			q_NavigationMesh.clear_polygons()
#	BUG	if randi() % 2 == 1:
#			q_NavigationMesh.create_from_mesh(Autoload.loadA("CubeMesh.tres"))

		if randi() % 2 == 1:
			q_NavigationMesh.get_collision_mask_bit( Autoload.get_int()))
		if randi() % 2 == 1:
			q_NavigationMesh.get_polygon( Autoload.get_int()))
		if randi() % 2 == 1:
			q_NavigationMesh.get_polygon_count())
		if randi() % 2 == 1:
			q_NavigationMesh.get_vertices())

