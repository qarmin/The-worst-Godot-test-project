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
			
		var q_Environment : Environment = Environment.new()
		if !Autoload.RANDI:
			
			q_Environment.set_background(randi() % Environment.BG_MAX)
			#q_Environment.set_sky(Sky.new())
			q_Environment.set_sky_custom_fov(randf() * 50)
			q_Environment.set_sky_orientation(Basis(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_Environment.set_sky_rotation(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_Environment.set_sky_rotation_degrees(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_Environment.set_bg_color(Color(randf(),randf(),randf(),randf()))
			q_Environment.set_bg_energy(randf() * 50)
			q_Environment.set_canvas_max_layer(randi()%50)
			q_Environment.set_camera_feed_id(randi()%50)
			q_Environment.set_ambient_light_color(Color(randf(),randf(),randf(),randf()))
			q_Environment.set_ambient_light_energy(randf() * 50)
			q_Environment.set_ambient_light_sky_contribution(randf() * 50)
			q_Environment.set_fog_enabled(bool(randi()%2))
			q_Environment.set_fog_color(Color(randf(),randf(),randf(),randf()))
			q_Environment.set_fog_sun_color(Color(randf(),randf(),randf(),randf()))
			q_Environment.set_fog_sun_amount(randf() * 50)
			q_Environment.set_fog_depth_enabled(bool(randi()%2))
			q_Environment.set_fog_depth_begin(randf() * 50)
			q_Environment.set_fog_depth_end(randf() * 50)
			q_Environment.set_fog_depth_curve(randf() * 50)
			q_Environment.set_fog_transmit_enabled(bool(randi()%2))
			q_Environment.set_fog_transmit_curve(randf() * 50)
			q_Environment.set_fog_height_enabled(bool(randi()%2))
			q_Environment.set_fog_height_min(randf() * 50)
			q_Environment.set_fog_height_max(randf() * 50)
			q_Environment.set_fog_height_curve(randf() * 50)
			q_Environment.set_tonemapper( randi() % 4)#ToneMapper
			q_Environment.set_tonemap_exposure(randf() * 50)
			q_Environment.set_tonemap_white(randf() * 50)
			q_Environment.set_tonemap_auto_exposure(bool(randi()%2))
			q_Environment.set_tonemap_auto_exposure_grey(randf() * 50)
			q_Environment.set_tonemap_auto_exposure_min(randf() * 50)
			q_Environment.set_tonemap_auto_exposure_max(randf() * 50)
			q_Environment.set_tonemap_auto_exposure_speed(randf() * 50)
			q_Environment.set_ssr_enabled(bool(randi()%2))
			q_Environment.set_ssr_max_steps(randi()%50)
			q_Environment.set_ssr_fade_in(randf() * 50)
			q_Environment.set_ssr_fade_out(randf() * 50)
			q_Environment.set_ssr_depth_tolerance(randf() * 50)
			q_Environment.set_ssr_rough(bool(randi()%2))
			q_Environment.set_ssao_enabled(bool(randi()%2))
			q_Environment.set_ssao_radius(randf() * 50)
			q_Environment.set_ssao_intensity(randf() * 50)
			q_Environment.set_ssao_radius2(randf() * 50)
			q_Environment.set_ssao_intensity2(randf() * 50)
			q_Environment.set_ssao_bias(randf() * 50)
			q_Environment.set_ssao_direct_light_affect(randf() * 50)
			q_Environment.set_ssao_ao_channel_affect(randf() * 50)
			q_Environment.set_ssao_color(Color(randf(),randf(),randf(),randf()))
			q_Environment.set_ssao_quality(randi() % 3) #SSAO Quality
			q_Environment.set_ssao_blur(randi() % 4) # SSAO Blur
			q_Environment.set_ssao_edge_sharpness(randf() * 50)
			q_Environment.set_dof_blur_far_enabled(bool(randi()%2))
			q_Environment.set_dof_blur_far_distance(randf() * 50)
			q_Environment.set_dof_blur_far_transition(randf() * 50)
			q_Environment.set_dof_blur_far_amount(randf() * 50)
			q_Environment.set_dof_blur_far_quality(randi() % 3) #DOFBlurQuality
			q_Environment.set_dof_blur_near_enabled(bool(randi()%2))
			q_Environment.set_dof_blur_near_distance(randf() * 50)
			q_Environment.set_dof_blur_near_transition(randf() * 50)
			q_Environment.set_dof_blur_near_amount(randf() * 50)
			q_Environment.set_dof_blur_near_quality(randi() % 3) #DOFBlurQuality
			q_Environment.set_glow_enabled(bool(randi()%2))
			q_Environment.set_glow_level(randi()%7,bool(randi()%2)) #VisualServer::MAX_GLOW_LEVELS
			q_Environment.set_glow_intensity(randf() * 50)
			q_Environment.set_glow_strength(randf() * 50)
			q_Environment.set_glow_bloom(randf() * 50)
			q_Environment.set_glow_blend_mode(randi() % 4) #Blend Mode
			q_Environment.set_glow_hdr_bleed_threshold(randf() * 50)
			q_Environment.set_glow_hdr_luminance_cap(randf() * 50)
			q_Environment.set_glow_hdr_bleed_scale(randf() * 50)
			q_Environment.set_glow_bicubic_upscale(bool(randi()%2))
			q_Environment.set_adjustment_enable(bool(randi()%2))
			q_Environment.set_adjustment_brightness(randf() * 50)
			q_Environment.set_adjustment_contrast(randf() * 50)
			q_Environment.set_adjustment_saturation(randf() * 50)
			q_Environment.set_adjustment_color_correction(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			
			if Autoload.WRONG_BUGS:
				q_Environment.set_background(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_sky(Sky.new())
				q_Environment.set_sky_custom_fov(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_sky_orientation(Basis(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_Environment.set_sky_rotation(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_Environment.set_sky_rotation_degrees(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_Environment.set_bg_color(Color(randf(),randf(),randf(),randf()))
				q_Environment.set_bg_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_canvas_max_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_camera_feed_id(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ambient_light_color(Color(randf(),randf(),randf(),randf()))
				q_Environment.set_ambient_light_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ambient_light_sky_contribution(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_enabled(bool(randi()%2))
				q_Environment.set_fog_color(Color(randf(),randf(),randf(),randf()))
				q_Environment.set_fog_sun_color(Color(randf(),randf(),randf(),randf()))
				q_Environment.set_fog_sun_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_depth_enabled(bool(randi()%2))
				q_Environment.set_fog_depth_begin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_depth_end(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_depth_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_transmit_enabled(bool(randi()%2))
				q_Environment.set_fog_transmit_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_height_enabled(bool(randi()%2))
				q_Environment.set_fog_height_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_height_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_fog_height_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemapper( randi() % Autoload.RANGE - Autoload.RANGE / 2)#ToneMapper
				q_Environment.set_tonemap_exposure(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemap_white(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemap_auto_exposure(bool(randi()%2))
				q_Environment.set_tonemap_auto_exposure_grey(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemap_auto_exposure_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemap_auto_exposure_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_tonemap_auto_exposure_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssr_enabled(bool(randi()%2))
				q_Environment.set_ssr_max_steps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssr_fade_in(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssr_fade_out(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssr_depth_tolerance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssr_rough(bool(randi()%2))
				q_Environment.set_ssao_enabled(bool(randi()%2))
				q_Environment.set_ssao_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_intensity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_radius2(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_intensity2(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_bias(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_direct_light_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_ao_channel_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_ssao_color(Color(randf(),randf(),randf(),randf()))
				q_Environment.set_ssao_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #SSAO Quality
				q_Environment.set_ssao_blur(randi() % Autoload.RANGE - Autoload.RANGE / 2) # SSAO Blur
				q_Environment.set_ssao_edge_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_far_enabled(bool(randi()%2))
				q_Environment.set_dof_blur_far_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_far_transition(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_far_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_far_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DOFBlurQuality
				q_Environment.set_dof_blur_near_enabled(bool(randi()%2))
				q_Environment.set_dof_blur_near_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_near_transition(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_near_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_dof_blur_near_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DOFBlurQuality
				q_Environment.set_glow_enabled(bool(randi()%2))
				q_Environment.set_glow_level(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2)) #VisualServer::MAX_GLOW_LEVELS
				q_Environment.set_glow_intensity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_strength(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_bloom(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Blend Mode
				q_Environment.set_glow_hdr_bleed_threshold(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_hdr_luminance_cap(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_hdr_bleed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_glow_bicubic_upscale(bool(randi()%2))
				q_Environment.set_adjustment_enable(bool(randi()%2))
				q_Environment.set_adjustment_brightness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_adjustment_contrast(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_adjustment_saturation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Environment.set_adjustment_color_correction(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))

		else: #RANDI
			if randi() % 2 == 1:
				q_Environment.set_background(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_sky(Sky.new())
			if randi() % 2 == 1:
				q_Environment.set_sky_custom_fov(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_sky_orientation(Basis(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_Environment.set_sky_rotation(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_Environment.set_sky_rotation_degrees(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_Environment.set_bg_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_Environment.set_bg_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_canvas_max_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_camera_feed_id(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ambient_light_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_Environment.set_ambient_light_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ambient_light_sky_contribution(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_fog_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_Environment.set_fog_sun_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_Environment.set_fog_sun_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_depth_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_fog_depth_begin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_depth_end(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_depth_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_transmit_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_fog_transmit_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_height_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_fog_height_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_height_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_fog_height_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemapper( randi() % Autoload.RANGE - Autoload.RANGE / 2)#ToneMapper
			if randi() % 2 == 1:
				q_Environment.set_tonemap_exposure(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemap_white(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemap_auto_exposure(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_tonemap_auto_exposure_grey(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemap_auto_exposure_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemap_auto_exposure_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_tonemap_auto_exposure_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssr_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_ssr_max_steps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssr_fade_in(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssr_fade_out(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssr_depth_tolerance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssr_rough(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_ssao_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_ssao_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_intensity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_radius2(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_intensity2(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_bias(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_direct_light_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_ao_channel_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_ssao_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_Environment.set_ssao_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #SSAO Quality
			if randi() % 2 == 1:
				q_Environment.set_ssao_blur(randi() % Autoload.RANGE - Autoload.RANGE / 2) # SSAO Blur
			if randi() % 2 == 1:
				q_Environment.set_ssao_edge_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_far_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_far_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_far_transition(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_far_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_far_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DOFBlurQuality
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_near_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_near_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_near_transition(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_near_amount(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_dof_blur_near_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DOFBlurQuality
			if randi() % 2 == 1:
				q_Environment.set_glow_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_glow_level(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2)) #VisualServer::MAX_GLOW_LEVELS
			if randi() % 2 == 1:
				q_Environment.set_glow_intensity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_strength(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_bloom(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Blend Mode
			if randi() % 2 == 1:
				q_Environment.set_glow_hdr_bleed_threshold(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_hdr_luminance_cap(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_hdr_bleed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_glow_bicubic_upscale(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_adjustment_enable(bool(randi()%2))
			if randi() % 2 == 1:
				q_Environment.set_adjustment_brightness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_adjustment_contrast(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_adjustment_saturation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Environment.set_adjustment_color_correction(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
