extends Node2D

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
		
		var q_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
		
		for i in range(SpatialMaterial.FEATURE_MAX):
			q_SpatialMaterial.set_feature(i,bool(randi()%2))
			
		for i in range(SpatialMaterial.FLAG_MAX):
			q_SpatialMaterial.set_flag(i,bool(randi()%2))
		
		q_SpatialMaterial.set_diffuse_mode(randi() % 5) #DiffuseMode
		q_SpatialMaterial.set_specular_mode(randi() % 5) #SpecularMode
		q_SpatialMaterial.set_blend_mode(randi() % 4) #BlendMode
		q_SpatialMaterial.set_cull_mode(randi() % 3) #CullMode
		q_SpatialMaterial.set_depth_draw_mode(randi() % 4) #DepthDrawMode
		q_SpatialMaterial.set_line_width(randf() * 50)
		q_SpatialMaterial.set_point_size(randf() * 50)
		q_SpatialMaterial.set_billboard_mode(randi() % 4) # BillboardMode
		q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
		q_SpatialMaterial.set_grow(randf() * 50)
		q_SpatialMaterial.set_alpha_scissor_threshold(randf() * 50)
		q_SpatialMaterial.set_particles_anim_h_frames(randi()%50)
		q_SpatialMaterial.set_particles_anim_v_frames(randi()%50)
		q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
		q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
		q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		q_SpatialMaterial.set_metallic(randf() * 50)
		q_SpatialMaterial.set_specular(randf() * 50)
		q_SpatialMaterial.set_metallic_texture_channel(randi() % 5)#TextureChannel
		q_SpatialMaterial.set_roughness(randf() * 50)
		q_SpatialMaterial.set_roughness_texture_channel(randi() % 5)#TextureChannel
		q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
		q_SpatialMaterial.set_emission_energy(randf() * 50)
		q_SpatialMaterial.set_emission_operator(randi() % 2) #EmissionOperator
		q_SpatialMaterial.set_normal_scale(randf() * 50)
		q_SpatialMaterial.set_rim(randf() * 50)
		q_SpatialMaterial.set_rim_tint(randf() * 50)
		q_SpatialMaterial.set_clearcoat(randf() * 50)
		q_SpatialMaterial.set_clearcoat_gloss(randf() * 50)
		q_SpatialMaterial.set_anisotropy(randf() * 50)
		q_SpatialMaterial.set_ao_light_affect(randf() * 50)
		q_SpatialMaterial.set_ao_texture_channel(randi() % 5)#TextureChannel
		q_SpatialMaterial.set_depth_scale(randf() * 50)
		q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
		q_SpatialMaterial.set_depth_deep_parallax_min_layers(randi()%50)
		q_SpatialMaterial.set_depth_deep_parallax_max_layers(randi()%50)
		q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
		q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
		q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
		q_SpatialMaterial.set_refraction(bool(randi()%2))
		q_SpatialMaterial.set_refraction_texture_channel(randi() % 5)#TextureChannel
		q_SpatialMaterial.set_detail_blend_mode(randi() % 4) #BlendMode
		q_SpatialMaterial.set_detail_uv(randi() % 2) #DetailUV
		q_SpatialMaterial.set_uv1_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_SpatialMaterial.set_uv1_offset(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(randf() * 50)
		q_SpatialMaterial.set_uv2_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_SpatialMaterial.set_uv2_offset(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(randf() * 50)
		q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
		q_SpatialMaterial.set_proximity_fade_distance(randf() * 50)
		q_SpatialMaterial.set_distance_fade(randi() % 4) #DistanceFadeMode
		q_SpatialMaterial.set_distance_fade_min_distance(randf() * 50)
		q_SpatialMaterial.set_distance_fade_max_distance(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			for i in range(SpatialMaterial.FEATURE_MAX):
				q_SpatialMaterial.set_feature(i,bool(randi()%2))
				
			for i in range(SpatialMaterial.FLAG_MAX):
				q_SpatialMaterial.set_flag(i,bool(randi()%2))
			
			q_SpatialMaterial.set_diffuse_mode(randi() % 1000 - 500) #DiffuseMode
			q_SpatialMaterial.set_specular_mode(randi() % 1000 - 500) #SpecularMode
			q_SpatialMaterial.set_blend_mode(randi() % 1000 - 500) #BlendMode
			q_SpatialMaterial.set_cull_mode(randi() % 1000 - 500) #CullMode
			q_SpatialMaterial.set_depth_draw_mode(randi() % 1000 - 500) #DepthDrawMode
			q_SpatialMaterial.set_line_width(randf() * 1000 - 500)
			q_SpatialMaterial.set_point_size(randf() * 1000 - 500)
			q_SpatialMaterial.set_billboard_mode(randi() % 1000 - 500) # BillboardMode
			q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
			q_SpatialMaterial.set_grow(randf() * 1000 - 500)
			q_SpatialMaterial.set_alpha_scissor_threshold(randf() * 1000 - 500)
			q_SpatialMaterial.set_particles_anim_h_frames(randi() % 1000 - 500)
			q_SpatialMaterial.set_particles_anim_v_frames(randi() % 1000 - 500)
			q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
			q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
			q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_SpatialMaterial.set_metallic(randf() * 1000 - 500)
			q_SpatialMaterial.set_specular(randf() * 1000 - 500)
			q_SpatialMaterial.set_metallic_texture_channel(randi() % 1000 - 500)#TextureChannel
			q_SpatialMaterial.set_roughness(randf() * 1000 - 500)
			q_SpatialMaterial.set_roughness_texture_channel(randi() % 1000 - 500)#TextureChannel
			q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
			q_SpatialMaterial.set_emission_energy(randf() * 1000 - 500)
			q_SpatialMaterial.set_emission_operator(randi() % 1000 - 500) #EmissionOperator
			q_SpatialMaterial.set_normal_scale(randf() * 1000 - 500)
			q_SpatialMaterial.set_rim(randf() * 1000 - 500)
			q_SpatialMaterial.set_rim_tint(randf() * 1000 - 500)
			q_SpatialMaterial.set_clearcoat(randf() * 1000 - 500)
			q_SpatialMaterial.set_clearcoat_gloss(randf() * 1000 - 500)
			q_SpatialMaterial.set_anisotropy(randf() * 1000 - 500)
			q_SpatialMaterial.set_ao_light_affect(randf() * 1000 - 500)
			q_SpatialMaterial.set_ao_texture_channel(randi() % 1000 - 500)#TextureChannel
			q_SpatialMaterial.set_depth_scale(randf() * 1000 - 500)
			q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
			q_SpatialMaterial.set_depth_deep_parallax_min_layers(randi() % 1000 - 500)
			q_SpatialMaterial.set_depth_deep_parallax_max_layers(randi() % 1000 - 500)
			q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
			q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
			q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
			q_SpatialMaterial.set_refraction(bool(randi()%2))
			q_SpatialMaterial.set_refraction_texture_channel(randi() % 1000 - 500)#TextureChannel
			q_SpatialMaterial.set_detail_blend_mode(randi() % 1000 - 500) #BlendMode
			q_SpatialMaterial.set_detail_uv(randi() % 1000 - 500) #DetailUV
			q_SpatialMaterial.set_uv1_scale(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_SpatialMaterial.set_uv1_offset(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(randf() * 1000 - 500)
			q_SpatialMaterial.set_uv2_scale(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_SpatialMaterial.set_uv2_offset(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(randf() * 1000 - 500)
			q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
			q_SpatialMaterial.set_proximity_fade_distance(randf() * 1000 - 500)
			q_SpatialMaterial.set_distance_fade(randi() % 1000 - 500) #DistanceFadeMode
			q_SpatialMaterial.set_distance_fade_min_distance(randf() * 1000 - 500)
			q_SpatialMaterial.set_distance_fade_max_distance(randf() * 1000 - 500)
