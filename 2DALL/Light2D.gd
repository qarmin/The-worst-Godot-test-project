extends Light2D

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
			set_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_editor_only(bool(randi()%2))
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			set_texture_offset(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_texture_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			set_mode(Autoload.get_randi())
		if randi() % 2 == 1:
			set_height(Autoload.get_randf())
		if randi() % 2 == 1:
			set_z_range_min(Autoload.get_randi())
		if randi() % 2 == 1:
			set_z_range_max(Autoload.get_randi())
		if randi() % 2 == 1:
			set_layer_range_min(Autoload.get_randi())
		if randi() % 2 == 1:
			set_layer_range_max(Autoload.get_randi())
		if randi() % 2 == 1:
			set_item_cull_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_shadow_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_shadow_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_shadow_buffer_size(Autoload.get_randi())
		if randi() % 2 == 1:
			set_shadow_smooth(Autoload.get_randi())
		if randi() % 2 == 1:
			set_item_shadow_cull_mask(Autoload.get_randi())
