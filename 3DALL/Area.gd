extends Area

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
			set_space_override_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_gravity_is_point(bool(randi()%2))
		if randi() % 2 == 1:
			set_gravity_distance_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_gravity_vector(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_gravity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_linear_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2) 
		if randi() % 2 == 1:
			set_angular_damp(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_priority(randf() * Autoload.RANGE - Autoload.RANGE / 2) 
		if randi() % 2 == 1:
			set_monitoring(bool(randi()%2))
		if randi() % 2 == 1:
			set_monitorable(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_audio_bus_override(bool(randi()%2))
		if randi() % 2 == 1:
			set_audio_bus(str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_use_reverb_bus(bool(randi()%2))
		if randi() % 2 == 1:
			set_reverb_bus(str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_reverb_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2) 
		if randi() % 2 == 1:
			set_reverb_uniformity(randf() * Autoload.RANGE - Autoload.RANGE / 2) 
			
			
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(get_overlapping_areas())
		if randi() % 2 == 1:
			qq += str(get_overlapping_bodies())
				
		if randi() % 2 == 1:
			qq += str(overlaps_area(self))
		if randi() % 2 == 1:
			qq += str(overlaps_body(self))
			
		if randi() % 2 == 1:
			set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
