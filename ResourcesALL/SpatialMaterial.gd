extends Node2D
	
var q_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
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
			q_SpatialMaterial = SpatialMaterial.new()
		
		
		if randi() % 2 == 1:
			q_SpatialMaterial.set_feature(Autoload.get_randi(),bool(randi()%2))
				
		if randi() % 2 == 1:
			q_SpatialMaterial.set_flag(Autoload.get_randi(),bool(randi()%2))
			
		if randi() % 2 == 1:
			q_SpatialMaterial.set_diffuse_mode(Autoload.get_randi()) #DiffuseMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_specular_mode(Autoload.get_randi()) #SpecularMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_blend_mode(Autoload.get_randi()) #BlendMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_cull_mode(Autoload.get_randi()) #CullMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_draw_mode(Autoload.get_randi()) #DepthDrawMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_line_width(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_point_size(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_billboard_mode(Autoload.get_randi()) # BillboardMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_grow(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_alpha_scissor_threshold(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_h_frames(Autoload.get_randi())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_v_frames(Autoload.get_randi())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,Autoload.loadA("res://RES/Sprite.png",true))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_metallic(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_specular(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_metallic_texture_channel(Autoload.get_randi())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_roughness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_roughness_texture_channel(Autoload.get_randi())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission_operator(Autoload.get_randi()) #EmissionOperator
		if randi() % 2 == 1:
			q_SpatialMaterial.set_normal_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_rim(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_rim_tint(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_clearcoat(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_clearcoat_gloss(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_anisotropy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_ao_light_affect(Autoload.get_randf())
#			if randi() % 2 == 1:
			#BUG q_SpatialMaterial.set_ao_texture_channel(Autoload.get_randi())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_min_layers(Autoload.get_randi())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_max_layers(Autoload.get_randi())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_refraction(bool(randi()%2))
		#if randi() % 2 == 1:
			#BUG q_SpatialMaterial.set_refraction_texture_channel(Autoload.get_randi())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_detail_blend_mode(Autoload.get_randi()) #BlendMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_detail_uv(Autoload.get_randi()) #DetailUV
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_scale(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_offset(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_scale(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_offset(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
		if randi() % 2 == 1:
			q_SpatialMaterial.set_proximity_fade_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade(Autoload.get_randi()) #DistanceFadeMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade_min_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade_max_distance(Autoload.get_randf())
