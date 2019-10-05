extends CSGBox

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_width(randf() * 50)
		set_height(randf() * 50)
		set_depth(randf() * 50)
		set_material(SpatialMaterial.new())
		
		# CSGPrimivive
		set_invert_faces(bool(randi()%2))
		
		# CSGShape
		set_operation(randi() % 3) # OPERATION
		set_snap(randf() * 50)
		set_calculate_tangents(bool(randi()%2))
		set_use_collision(bool(randi()%2))
		set_collision_layer(randi()%50000)
		set_collision_mask(randi()%50000)
		
		qq += str(get_collision_layer_bit(randi() % 20))
		qq += str(get_collision_mask_bit(randi() % 20))
		qq += str(get_meshes())
		
		qq += str(is_root_shape())
		
		set_collision_layer_bit(randi() % 20,bool(randi()%2))
		set_collision_mask_bit(randi() % 20,bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			set_width(randf() * 1000 - 500)
			set_height(randf() * 1000 - 500)
			set_depth(randf() * 1000 - 500)
			set_material(SpatialMaterial.new())
			
			# CSGPrimivive
			set_invert_faces(bool(randi()%2))
			
			# CSGShape
			set_operation(randi() % 1000 - 500) # OPERATION
			set_snap(randf() * 1000 - 500)
			set_calculate_tangents(bool(randi()%2))
			set_use_collision(bool(randi()%2))
			set_collision_layer(randi() % 1000000 - 500000)
			set_collision_mask(randi() % 1000000 - 500000)
			
			qq += str(get_collision_layer_bit(randi() % 1000000 - 500000))
			qq += str(get_collision_mask_bit(randi() % 1000000 - 500000))
			qq += str(get_meshes())
			
			qq += str(is_root_shape())
			
			set_collision_layer_bit(randi() % 1000000 - 500000,bool(randi()%2))
			set_collision_mask_bit(randi() % 1000000 - 500000,bool(randi()%2))

	else: #RANDI
		if randi() % 2 == 1:
			set_width(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_height(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_depth(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_material(SpatialMaterial.new())
			
			# CSGPrimivive
		if randi() % 2 == 1:
			set_invert_faces(bool(randi()%2))
			
			# CSGShape
		if randi() % 2 == 1:
			set_operation(randi() % 1000 - 500) # OPERATION
		if randi() % 2 == 1:
			set_snap(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_calculate_tangents(bool(randi()%2))
		if randi() % 2 == 1:
			set_use_collision(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer(randi() % 1000000 - 500000)
		if randi() % 2 == 1:
			set_collision_mask(randi() % 1000000 - 500000)
			
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(randi() % 1000000 - 500000))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % 1000000 - 500000))
		if randi() % 2 == 1:
			qq += str(get_meshes())
			
		if randi() % 2 == 1:
			qq += str(is_root_shape())
			
		if randi() % 2 == 1:
			set_collision_layer_bit(randi() % 1000000 - 500000,bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % 1000000 - 500000,bool(randi()%2))
