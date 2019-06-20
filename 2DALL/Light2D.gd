extends Light2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
		
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_enabled(bool(randi()%2))
		set_editor_only(bool(randi()%2))
		set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_texture_offset(Vector2(randf() * 50,randf() * 50))
		set_texture_scale(randf() * 50)
		set_color(Color(randf(),randf(),randf(),randf()))
		set_energy(randf() * 50)
		set_mode(randi()%4)
		set_height(randf() * 50)
		set_z_range_min(randi()%50)
		set_z_range_max(randi()%50)
		set_layer_range_min(randi()%50)
		set_layer_range_max(randi()%50)
		set_item_cull_mask(randi()%50)
		set_shadow_enabled(bool(randi()%2))
		set_shadow_color(Color(randf(),randf(),randf(),randf()))
		set_shadow_buffer_size(randi()%(16384-32-1) + 32)
		set_shadow_smooth(randi()%50)
		set_item_shadow_cull_mask(randi()%6)
		
		
		if Autoload.WRONG_BUGS:
			set_enabled(bool(randi()%2))
			set_editor_only(bool(randi()%2))
			set_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			set_texture_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_texture_scale(randf() * 1000 - 500)
			set_color(Color(randf(),randf(),randf(),randf()))
			set_energy(randf() * 1000 - 500)
			set_mode(randi() % 1000 - 500)
			set_height(randf() * 1000 - 500)
			set_z_range_min(randi() % 1000 - 500)
			set_z_range_max(randi() % 1000 - 500)
			set_layer_range_min(randi() % 1000 - 500)
			set_layer_range_max(randi() % 1000 - 500)
			set_item_cull_mask(randi() % 1000 - 500)
			set_shadow_enabled(bool(randi()%2))
			set_shadow_color(Color(randf(),randf(),randf(),randf()))
			set_shadow_buffer_size(randi() % 1000 - 500)
			set_shadow_smooth(randi() % 1000 - 500)
			set_item_shadow_cull_mask(randi() % 1000000 - 500000)
