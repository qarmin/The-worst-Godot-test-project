extends Area2D

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

		if randi() % 2 == 1:
			set_space_override_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_gravity_is_point(bool(randi()%2))
		if randi() % 2 == 1:
			set_gravity_distance_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			set_gravity_vector(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_gravity(Autoload.get_randf())
		if randi() % 2 == 1:
			set_linear_damp(Autoload.get_randf())
		if randi() % 2 == 1:
			set_angular_damp(Autoload.get_randf())
		if randi() % 2 == 1:
			set_priority(Autoload.get_randf())
		if randi() % 2 == 1:
			set_monitoring(bool(randi()%2))
		if randi() % 2 == 1:
			set_monitorable(bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_audio_bus_override(bool(randi()%2))
		if randi() % 2 == 1:
			set_audio_bus_name(Autoload.get_string())
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_randi()))
		if monitoring:
			if randi() % 2 == 1:
				qq += str(get_overlapping_areas())
			if randi() % 2 == 1:
				qq += str(get_overlapping_bodies())
		if randi() % 2 == 1:
			qq += str(overlaps_area(self))
		if randi() % 2 == 1:
			qq += str(overlaps_body(self))
			
		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_randi(),Autoload.get_randi())
