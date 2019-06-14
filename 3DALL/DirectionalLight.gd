extends DirectionalLight

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
		
		set_shadow_mode(randi() % 3)
		
		set("directional_shadow_split_1",randf() * 50)
		set("directional_shadow_split_2",randf() * 50)
		set("directional_shadow_split_3",randf() * 50)
		
		set("directional_shadow_normal_bias",randf() * 50)
		set("directional_shadow_bias_split_scale",randf() * 50)
			
		set_blend_splits(randi() % 2)
		
		set("directional_shadow_max_distance",randf() * 50)
		
		# Light
		set_color(Color(randf(),randf(),randf(),randf()))
		
		set("light_energy",randf() * 50)
		set("light_indirect_energy",randf() * 50)
		set_negative(bool(randi()%2))
		set("light_specular",randf() * 50)
		set_bake_mode(randi() % 3) # BakeMode
		set_cull_mask(randi()%50)
		set_shadow(bool(randi()%2))
		set_shadow_color(Color(randf(),randf(),randf(),randf()))
		set("shadow_bias",randf() * 50)
		set("shadow_contact",randf() * 50)
		set_shadow_reverse_cull_face(bool(randi()%2))
		set_editor_only(bool(randi()%2))
		
		
		
		if Autoload.WRONG_BUGS:
			
			set_shadow_mode(randi() % 3)
			
			set("directional_shadow_split_1",randf() * 50)
			set("directional_shadow_split_2",randf() * 50)
			set("directional_shadow_split_3",randf() * 50)
			
			set("directional_shadow_normal_bias",randf() * 50)
			set("directional_shadow_bias_split_scale",randf() * 50)
				
			set_blend_splits(randi() % 2)
			
			set("directional_shadow_max_distance",randf() * 50)
			
			# Light
			set_color(Color(randf(),randf(),randf(),randf()))
			
			set("light_energy",randf() * 1000 - 500)
			set("light_indirect_energy",randf() * 1000 - 500)
			set_negative(bool(randi()%2))
			set("light_specular",randf() * 1000 - 500)
			set_bake_mode(randi() % 1000 - 500) # BakeMode
			set_cull_mask(randi() % 1000 - 500)
			set_shadow(bool(randi()%2))
			set_shadow_color(Color(randf(),randf(),randf(),randf()))
			set("shadow_bias",randf() * 1000 - 500)
			set("shadow_contact",randf() * 1000 - 500)
			set_shadow_reverse_cull_face(bool(randi()%2))
			set_editor_only(bool(randi()%2))
