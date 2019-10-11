extends DirectionalLight

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
			set_shadow_mode(Autoload.get_randi()) # ShadowMode
			
		if randi() % 2 == 1:
			set("directional_shadow_split_1",Autoload.get_randf())
		if randi() % 2 == 1:
			set("directional_shadow_split_2",Autoload.get_randf())
		if randi() % 2 == 1:
			set("directional_shadow_split_3",Autoload.get_randf())
			
		if randi() % 2 == 1:
			set("directional_shadow_normal_bias",Autoload.get_randf())
		if randi() % 2 == 1:
			set("directional_shadow_bias_split_scale",Autoload.get_randf())
				
		if randi() % 2 == 1:
			set_blend_splits(Autoload.get_randi()) # ShadowDepthRange
			
		if randi() % 2 == 1:
			set("directional_shadow_max_distance",Autoload.get_randf())
			
			# Light
		if randi() % 2 == 1:
			set_color(Color(randf(),randf(),randf(),randf()))
			
		if randi() % 2 == 1:
			set("light_energy",Autoload.get_randf())
		if randi() % 2 == 1:
			set("light_indirect_energy",Autoload.get_randf())
		if randi() % 2 == 1:
			set_negative(bool(randi()%2))
		if randi() % 2 == 1:
			set("light_specular",Autoload.get_randf())
		if randi() % 2 == 1:
			set_bake_mode(Autoload.get_randi()) # BakeMode
		if randi() % 2 == 1:
			set_cull_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_shadow(bool(randi()%2))
		if randi() % 2 == 1:
			set_shadow_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set("shadow_bias",Autoload.get_randf())
		if randi() % 2 == 1:
			set("shadow_contact",Autoload.get_randf())
		if randi() % 2 == 1:
			set_shadow_reverse_cull_face(bool(randi()%2))
		if randi() % 2 == 1:
			set_editor_only(bool(randi()%2))
