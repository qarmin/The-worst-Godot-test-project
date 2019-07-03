extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var q_NavigationMesh : NavigationMesh = NavigationMesh.new()
		
		q_NavigationMesh.set_sample_partition_type(randi()%3) # SAMPLE_PARTITION
		q_NavigationMesh.set_parsed_geometry_type(randi()%3) #PARSED_GEOMETRY
		q_NavigationMesh.set_collision_mask(randi()%50)
		q_NavigationMesh.set_cell_size(randf() * 50)
		q_NavigationMesh.set_cell_height(randf() * 50)
		q_NavigationMesh.set_agent_height(randf() * 50)
		q_NavigationMesh.set_agent_radius(randf() * 50)
		q_NavigationMesh.set_agent_max_climb(randf() * 50)
		q_NavigationMesh.set_agent_max_slope(randf() * 50)
		q_NavigationMesh.set_region_min_size(randf() * 50)
		q_NavigationMesh.set_region_merge_size(randf() * 50)
		q_NavigationMesh.set_edge_max_length(randf() * 50)
		q_NavigationMesh.set_edge_max_error(randf() * 50)
		q_NavigationMesh.set_verts_per_poly(randf() * 50)
		q_NavigationMesh.set_detail_sample_distance(randf() * 50)
		q_NavigationMesh.set_detail_sample_max_error(randf() * 50)
		q_NavigationMesh.set_filter_low_hanging_obstacles(bool(randi()%2))
		q_NavigationMesh.set_filter_ledge_spans(bool(randi()%2))
		q_NavigationMesh.set_filter_walkable_low_height_spans(bool(randi()%2))
		
		q_NavigationMesh.add_polygon( PoolIntArray([125125.125,12512.1251,122.124]))
		#MOVED q_NavigationMesh.clear_polygons()
		#BUG q_NavigationMesh.create_from_mesh(CubeMesh.new())
		
		qq += str(q_NavigationMesh.get_collision_mask_bit( randi()%20 ))
		qq += str(q_NavigationMesh.get_polygon( randi() % 5 ))
		qq += str(q_NavigationMesh.get_polygon_count())
		qq += str(q_NavigationMesh.get_vertices())
		
		q_NavigationMesh.clear_polygons() #MOVED
		
		if Autoload.WRONG_BUGS:
			q_NavigationMesh.set_sample_partition_type(randi() % 1000 - 500) # SAMPLE_PARTITION
			q_NavigationMesh.set_parsed_geometry_type(randi() % 1000 - 500) #PARSED_GEOMETRY
			q_NavigationMesh.set_collision_mask(randi() % 1000 - 500)
			q_NavigationMesh.set_cell_size(randf() * 1000 - 500)
			q_NavigationMesh.set_cell_height(randf() * 1000 - 500)
			q_NavigationMesh.set_agent_height(randf() * 1000 - 500)
			q_NavigationMesh.set_agent_radius(randf() * 1000 - 500)
			q_NavigationMesh.set_agent_max_climb(randf() * 1000 - 500)
			q_NavigationMesh.set_agent_max_slope(randf() * 1000 - 500)
			q_NavigationMesh.set_region_min_size(randf() * 1000 - 500)
			q_NavigationMesh.set_region_merge_size(randf() * 1000 - 500)
			q_NavigationMesh.set_edge_max_length(randf() * 1000 - 500)
			q_NavigationMesh.set_edge_max_error(randf() * 1000 - 500)
			q_NavigationMesh.set_verts_per_poly(randf() * 1000 - 500)
			q_NavigationMesh.set_detail_sample_distance(randf() * 1000 - 500)
			q_NavigationMesh.set_detail_sample_max_error(randf() * 1000 - 500)
			q_NavigationMesh.set_filter_low_hanging_obstacles(bool(randi()%2))
			q_NavigationMesh.set_filter_ledge_spans(bool(randi()%2))
			q_NavigationMesh.set_filter_walkable_low_height_spans(bool(randi()%2))
			
			q_NavigationMesh.add_polygon( PoolIntArray([125125.125,12512.1251,122.124]))
			#MOVED q_NavigationMesh.clear_polygons()
			#BUG q_NavigationMesh.create_from_mesh(CubeMesh.new())
			
			qq += str(q_NavigationMesh.get_collision_mask_bit( randi() % 1000 - 500 ))
			qq += str(q_NavigationMesh.get_polygon( randi() % 1000 - 500 ))
			qq += str(q_NavigationMesh.get_polygon_count())
			qq += str(q_NavigationMesh.get_vertices())
			
			q_NavigationMesh.clear_polygons() #MOVED
