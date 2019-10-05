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
		
		set_space_override_mode(randi() % 5)
		set_gravity_is_point(bool(randi()%2))
		set_gravity_distance_scale(randf() * 50)
		set_gravity_vector(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_gravity(randf() * 50)
		set_linear_damp(randf() * 50) 
		set_angular_damp(randf() * 50)
		set_priority(randf() * 50) 
		set_monitoring(bool(randi()%2))
		set_monitorable(bool(randi()%2))
		set_collision_layer(randi()%4096)
		set_collision_mask(randi()%4096)
		set_audio_bus_override(bool(randi()%2))
		set_audio_bus(str(bool(randi()%2)))
		set_use_reverb_bus(bool(randi()%2))
		set_reverb_bus(str(bool(randi()%2)))
		set_reverb_amount(randf() * 50) 
		set_reverb_uniformity(randf() * 50) 
		
		
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		if monitoring:
			qq += str(get_overlapping_areas())
			qq += str(get_overlapping_bodies())
		qq += str(overlaps_area(self))
		qq += str(overlaps_body(self))
		
		set_collision_layer_bit(randi()%20,randi()%2000)
		set_collision_mask_bit(randi()%20,randi()%2000)
		
		if Autoload.WRONG_BUGS:
			
			set_space_override_mode(randi() % 1000 - 500)
			set_gravity_is_point(bool(randi()%2))
			set_gravity_distance_scale(randf() * 1000 - 500)
			set_gravity_vector(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500))
			set_gravity(randf() * 1000 - 500)
			set_linear_damp(randf() * 1000 - 500) 
			set_angular_damp(randf() * 1000 - 500)
			set_priority(randf() * 1000 - 500) 
			set_monitoring(bool(randi()%2))
			set_monitorable(bool(randi()%2))
			set_collision_layer(randi() % 1000 - 500)
			set_collision_mask(randi() % 1000 - 500)
			set_audio_bus_override(bool(randi()%2))
			set_audio_bus(str(bool(randi()%2)))
			set_use_reverb_bus(bool(randi()%2))
			set_reverb_bus(str(bool(randi()%2)))
			set_reverb_amount(randf() * 1000 - 500) 
			set_reverb_uniformity(randf() * 1000 - 500) 
			
			
			qq += str(get_collision_layer_bit(randi() % 1000 - 500))
			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
			
			qq += str(get_overlapping_areas())
			qq += str(get_overlapping_bodies())
				
			qq += str(overlaps_area(self))
			qq += str(overlaps_body(self))
			
			set_collision_layer_bit(randi() % 1000 - 500,randi() % 1000 - 500)
			set_collision_mask_bit(randi() % 1000 - 500,randi() % 1000 - 500)
	else: #RANDI
		if randi() % 2 == 1:
			set_space_override_mode(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_gravity_is_point(bool(randi()%2))
		if randi() % 2 == 1:
			set_gravity_distance_scale(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_gravity_vector(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500))
		if randi() % 2 == 1:
			set_gravity(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_linear_damp(randf() * 1000 - 500) 
		if randi() % 2 == 1:
			set_angular_damp(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_priority(randf() * 1000 - 500) 
		if randi() % 2 == 1:
			set_monitoring(bool(randi()%2))
		if randi() % 2 == 1:
			set_monitorable(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_collision_mask(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_audio_bus_override(bool(randi()%2))
		if randi() % 2 == 1:
			set_audio_bus(str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_use_reverb_bus(bool(randi()%2))
		if randi() % 2 == 1:
			set_reverb_bus(str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_reverb_amount(randf() * 1000 - 500) 
		if randi() % 2 == 1:
			set_reverb_uniformity(randf() * 1000 - 500) 
			
			
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
			
		if randi() % 2 == 1:
			qq += str(get_overlapping_areas())
		if randi() % 2 == 1:
			qq += str(get_overlapping_bodies())
				
		if randi() % 2 == 1:
			qq += str(overlaps_area(self))
		if randi() % 2 == 1:
			qq += str(overlaps_body(self))
			
		if randi() % 2 == 1:
			set_collision_layer_bit(randi() % 1000 - 500,randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % 1000 - 500,randi() % 1000 - 500)
