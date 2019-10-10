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

		if randi() % 2 == 1:
			set_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_depth(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_material(SpatialMaterial.new())
			
			# CSGPrimivive
		if randi() % 2 == 1:
			set_invert_faces(bool(randi()%2))
			
			# CSGShape
		if randi() % 2 == 1:
			set_operation(randi() % Autoload.RANGE - Autoload.RANGE / 2) # OPERATION
		if randi() % 2 == 1:
			set_snap(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_calculate_tangents(bool(randi()%2))
		if randi() % 2 == 1:
			set_use_collision(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_meshes())
			
		if randi() % 2 == 1:
			qq += str(is_root_shape())
			
		if randi() % 2 == 1:
			set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
