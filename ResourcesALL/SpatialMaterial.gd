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
			q_SpatialMaterial.set_feature(Autoload.get_int(),Autoload.get_bool())
				
		if randi() % 2 == 1:
			q_SpatialMaterial.set_flag(Autoload.get_int(),Autoload.get_bool())
			
		if randi() % 2 == 1:
			q_SpatialMaterial.set_diffuse_mode(Autoload.get_int()) #DiffuseMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_specular_mode(Autoload.get_int()) #SpecularMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_blend_mode(Autoload.get_int()) #BlendMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_cull_mode(Autoload.get_int()) #CullMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_draw_mode(Autoload.get_int()) #DepthDrawMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_line_width(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_point_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_billboard_mode(Autoload.get_int()) # BillboardMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_grow_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_grow(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_alpha_scissor_threshold(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_h_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_v_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_particles_anim_loop(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_albedo(Autoload.get_color())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,Autoload.loadA("Sprite.png")) #TextureParam
		if randi() % 2 == 1:
			q_SpatialMaterial.set_metallic(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_specular(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_metallic_texture_channel(Autoload.get_int())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_roughness(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_roughness_texture_channel(Autoload.get_int())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission(Autoload.get_color())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission_energy(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_emission_operator(Autoload.get_int()) #EmissionOperator
		if randi() % 2 == 1:
			q_SpatialMaterial.set_normal_scale(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_rim(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_rim_tint(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_clearcoat(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_clearcoat_gloss(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_anisotropy(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_ao_light_affect(Autoload.get_float())
#			if randi() % 2 == 1:
			#BUG q_SpatialMaterial.set_ao_texture_channel(Autoload.get_int())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_scale(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_min_layers(Autoload.get_int())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_max_layers(Autoload.get_int())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_subsurface_scattering_strength(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_refraction(Autoload.get_bool())
		#if randi() % 2 == 1:
			#BUG q_SpatialMaterial.set_refraction_texture_channel(Autoload.get_int())#TextureChannel
		if randi() % 2 == 1:
			q_SpatialMaterial.set_detail_blend_mode(Autoload.get_int()) #BlendMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_detail_uv(Autoload.get_int()) #DetailUV
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_scale(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_offset(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_scale(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_offset(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_proximity_fade(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_proximity_fade_distance(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade(Autoload.get_int()) #DistanceFadeMode
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade_min_distance(Autoload.get_float())
		if randi() % 2 == 1:
			q_SpatialMaterial.set_distance_fade_max_distance(Autoload.get_float())
