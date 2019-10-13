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
			q_Environment.set_background(Autoload.get_int())
		if randi() % 2 == 1:
			q_Environment.set_sky(Sky.new())
		if randi() % 2 == 1:
			q_Environment.set_sky_custom_fov(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_sky_orientation(Basis(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			q_Environment.set_sky_rotation(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_Environment.set_sky_rotation_degrees(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_Environment.set_bg_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_Environment.set_bg_energy(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_canvas_max_layer(Autoload.get_int())
		if randi() % 2 == 1:
			q_Environment.set_camera_feed_id(Autoload.get_int())
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_energy(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ambient_light_sky_contribution(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_fog_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_Environment.set_fog_sun_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_Environment.set_fog_sun_amount(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_begin(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_end(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_depth_curve(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_transmit_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_fog_transmit_curve(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_min(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_max(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_fog_height_curve(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemapper( Autoload.get_int())#ToneMapper
		if randi() % 2 == 1:
			q_Environment.set_tonemap_exposure(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_white(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_grey(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_min(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_max(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_tonemap_auto_exposure_speed(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssr_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_ssr_max_steps(Autoload.get_int())
		if randi() % 2 == 1:
			q_Environment.set_ssr_fade_in(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssr_fade_out(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssr_depth_tolerance(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssr_rough(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_ssao_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_ssao_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_intensity(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_radius2(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_intensity2(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_bias(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_direct_light_affect(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_ao_channel_affect(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_ssao_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_Environment.set_ssao_quality(Autoload.get_int()) #SSAO Quality
		if randi() % 2 == 1:
			q_Environment.set_ssao_blur(Autoload.get_int()) # SSAO Blur
		if randi() % 2 == 1:
			q_Environment.set_ssao_edge_sharpness(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_distance(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_transition(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_amount(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_far_quality(Autoload.get_int()) #DOFBlurQuality
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_distance(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_transition(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_amount(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_dof_blur_near_quality(Autoload.get_int()) #DOFBlurQuality
		if randi() % 2 == 1:
			q_Environment.set_glow_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_glow_level(Autoload.get_int(),Autoload.get_bool()) #VisualServer::MAX_GLOW_LEVELS
		if randi() % 2 == 1:
			q_Environment.set_glow_intensity(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_strength(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_bloom(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_blend_mode(Autoload.get_int()) #Blend Mode
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_bleed_threshold(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_luminance_cap(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_hdr_bleed_scale(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_glow_bicubic_upscale(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_enable(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_brightness(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_contrast(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_saturation(Autoload.get_float())
		if randi() % 2 == 1:
			q_Environment.set_adjustment_color_correction(Autoload.loadA("Sprite.png"))
