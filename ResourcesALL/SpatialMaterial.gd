extends Node2D
#MISSING
#var q_StandardMaterial : StandardMaterial = StandardMaterial.new()
#
#onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_StandardMaterial,true)
#
#func nodeFunction(q_StandardMaterial : StandardMaterial, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_StandardMaterial = StandardMaterial.new()
#	if randi() % 2 == 1:
#		AutoResourcesMaterial.nodeFunction(q_StandardMaterial)
#
#	### START TEMP
#	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
#
#	### END TEMP
#
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_feature(Autoload.get_int(),Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_flag(Autoload.get_int(),Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_diffuse_mode(Autoload.get_int()) #DiffuseMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_specular_mode(Autoload.get_int()) #SpecularMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_blend_mode(Autoload.get_int()) #BlendMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_cull_mode(Autoload.get_int()) #CullMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_draw_mode(Autoload.get_int()) #DepthDrawMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_line_width(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_point_size(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_billboard_mode(Autoload.get_int()) # BillboardMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_grow_enabled(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_grow(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_alpha_scissor_threshold(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_particles_anim_h_frames(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_particles_anim_v_frames(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_particles_anim_loop(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_albedo(Autoload.get_color())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_texture(Autoload.get_int(),temp_ImageTexture) #TextureParam
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_metallic(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_specular(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_metallic_texture_channel(Autoload.get_int())#TextureChannel
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_roughness(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_roughness_texture_channel(Autoload.get_int())#TextureChannel
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_emission(Autoload.get_color())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_emission_energy(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_emission_operator(Autoload.get_int()) #EmissionOperator
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_normal_scale(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_rim(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_rim_tint(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_clearcoat(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_clearcoat_gloss(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_anisotropy(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_ao_light_affect(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_ao_texture_channel(Autoload.get_int())#TextureChannel
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_scale(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_deep_parallax(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_deep_parallax_min_layers(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_deep_parallax_max_layers(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_deep_parallax_flip_tangent(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_depth_deep_parallax_flip_binormal(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_subsurface_scattering_strength(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_refraction(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_refraction_texture_channel(Autoload.get_int())#TextureChannel
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_detail_blend_mode(Autoload.get_int()) #BlendMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_detail_uv(Autoload.get_int()) #DetailUV
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv1_scale(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv1_offset(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv1_triplanar_blend_sharpness(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv2_scale(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv2_offset(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_uv2_triplanar_blend_sharpness(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_proximity_fade(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_proximity_fade_distance(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_distance_fade(Autoload.get_int()) #DistanceFadeMode
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_distance_fade_min_distance(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StandardMaterial.set_distance_fade_max_distance(Autoload.get_float())
