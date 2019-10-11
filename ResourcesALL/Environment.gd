extends Node2D

var q_Environment : Environment = Environment.new()
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
			q_Environment = Environment.new()
			
		
		if randi() % 2 == 1:
			q_Environment.set_background(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Environment.set_sky(Sky.new())
		if randi() % 2 == 1:
			q_Environment.set_sky_custom_fov(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_sky_orientation(Basis(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_Environment.set_sky_rotation(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Environment.set_sky_rotation_degrees(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Environment.set_bg_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Environment.set_bg_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_canvas_max_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Environment.set_camera_feed_id(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_sky_contribution(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_fog_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Environment.set_fog_sun_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Environment.set_fog_sun_amount(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_begin(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_end(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_transmit_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_fog_transmit_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_fog_height_min(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_max(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemapper( Autoload.get_randi())#ToneMapper
		if randi() % 2 == 1:
			q_Environment.set_tonemap_exposure(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_white(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_grey(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_min(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_max(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_speed(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssr_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_ssr_max_steps(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Environment.set_ssr_fade_in(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssr_fade_out(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssr_depth_tolerance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssr_rough(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_ssao_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_ssao_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_intensity(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_radius2(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_intensity2(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_bias(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_direct_light_affect(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_ao_channel_affect(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_ssao_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_Environment.set_ssao_quality(Autoload.get_randi()) #SSAO Quality
		if randi() % 2 == 1:
			q_Environment.set_ssao_blur(Autoload.get_randi()) # SSAO Blur
		if randi() % 2 == 1:
			q_Environment.set_ssao_edge_sharpness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_transition(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_amount(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_quality(Autoload.get_randi()) #DOFBlurQuality
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_transition(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_amount(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_quality(Autoload.get_randi()) #DOFBlurQuality
		if randi() % 2 == 1:
			q_Environment.set_glow_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_glow_level(Autoload.get_randi(),bool(randi()%2)) #VisualServer::MAX_GLOW_LEVELS
		if randi() % 2 == 1:
			q_Environment.set_glow_intensity(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_strength(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_bloom(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_blend_mode(Autoload.get_randi()) #Blend Mode
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_bleed_threshold(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_luminance_cap(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_bleed_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_glow_bicubic_upscale(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_adjustment_enable(bool(randi()%2))
		if randi() % 2 == 1:
			q_Environment.set_adjustment_brightness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_contrast(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_saturation(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_color_correction(Autoload.loadA("res://RES/Sprite.png"))
