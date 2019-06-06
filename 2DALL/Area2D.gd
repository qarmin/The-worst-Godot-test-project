extends Area2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	position.x += (int(right) * 2 - 1) * delta * 100
	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_disabled(bool(randi()%2))
				i.set_shape(i.get_shape())
				i.set_one_way_collision(bool(randi()%2))
				i.set_one_way_collision_margin(randf() * 50)
		
		set_space_override_mode(randi() % 5)
		set_gravity_is_point(bool(randi()%2))
		set_gravity_distance_scale(randf() * 50)
		set_gravity_vector(Vector2(randf() * 50,randf() * 50)) 
		set_gravity(randf() * 50)
		set_linear_damp(randf() * 50) 
		set_angular_damp(randf() * 50)
		set_priority(randf() * 50) 
		set_monitoring(bool(randi()%2))
		set_monitorable(bool(randi()%2))
		set_collision_layer(randi()%4096)
		set_collision_mask(randi()%4096)
		set_audio_bus_override(bool(randi()%2))
		set_audio_bus_name(str(bool(randi()%2)))
		
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		if monitoring:
			qq += str(get_overlapping_areas())
			qq += str(get_overlapping_bodies())
		qq += str(overlaps_area(self))
		qq += str(overlaps_body(self))
		
		set_collision_layer_bit(randi()%20,randi()%2000)
		set_collision_mask_bit(randi()%20,randi()%2000)
		
		
		## With Errors
		if Autoload.WRONG_BUGS:
			for i in get_children():
				if i.get_name().begins_with("Collision"):
					i.set_disabled(bool(randi()%2))
					i.set_shape(i.get_shape())
					i.set_one_way_collision(bool(randi()%2))
					i.set_one_way_collision_margin(randf() * 1000 - 500)
			
			set_space_override_mode(randi() % 1000 - 500)
			set_gravity_is_point(bool(randi()%2))
			set_gravity_distance_scale(randf() * 1000 - 500)
			set_gravity_vector(Vector2(randf() * 1000 - 500, randf() * 1000 - 500)) 
			set_gravity(randf() * 1000 - 500)
			set_linear_damp(randf() * 1000 - 500) 
			set_angular_damp(randf() * 1000 - 500)
			set_priority(randf() * 1000 - 500)
			set_monitoring(bool(randi()%2))
			set_monitorable(bool(randi()%2))
			set_collision_layer(randi() % 1000000 - 500000)
			set_collision_mask(randi() % 1000000 - 500000)
			set_audio_bus_override(bool(randi()%2))
			set_audio_bus_name("ŚÓĆŒĄÓŚŁ")
			
			qq += str(get_collision_layer_bit(randi() % 1000 - 500))
			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
			if monitoring:
				qq += str(get_overlapping_areas())
				qq += str(get_overlapping_bodies())
			qq += str(overlaps_area(self))
			qq += str(overlaps_body(self))
			
			set_collision_layer_bit(randi() % 1000 - 500,randi() % 1000000 - 500000)
			set_collision_mask_bit(randi() % 1000 - 500,randi() % 1000000 - 500000)