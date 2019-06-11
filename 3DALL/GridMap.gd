extends GridMap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_theme(MeshLibrary.new())
		set_mesh_library(MeshLibrary.new())
		set_cell_size(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_octant_size(randi()%50)
		set_center_x(bool(randi()%2))
		set_center_y(bool(randi()%2))
		set_center_z(bool(randi()%2))
		set_cell_scale(randf() * 50)
		set_collision_layer(randi()%50000)
		set_collision_mask(randi()%50000)
		
		clear()
		clear_baked_meshes()
		
		get_bake_mesh_instance(randi()%50)
		get_bake_meshes()
		get_cell_item(randi()%50,randi()%50,randi()%50)
		get_cell_item_orientation(randi()%50,randi()%50,randi()%50)
		get_collision_layer_bit(randi()%20)
		get_collision_mask_bit(randi()%20)
		get_meshes()
		get_used_cells()
		
		make_baked_meshes(bool(randi()%2), randf() * 50)
		map_to_world(randi()%50,randi()%50,randi()%50)
		resource_changed(CubeMesh.new())
		
		set_cell_item(randi()%50,randi()%50,randi()%50,randi()%50,randi()%50)
		for i in range(3):
			set_clip(bool(randi()%2),bool(randi()%2),randi()%50, i)
		set_collision_layer_bit(randi()%20,bool(randi()%2))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		
		world_to_map(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		
