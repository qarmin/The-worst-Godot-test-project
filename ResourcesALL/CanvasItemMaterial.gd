extends Node2D

var q_CanvasItemMaterial : CanvasItemMaterial = CanvasItemMaterial.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CanvasItemMaterial = CanvasItemMaterial.new()

		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_blend_mode(Autoload.get_int()) #BlendMode
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_light_mode(Autoload.get_int()) # LightMode
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_animation(Autoload.get_bool())
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_h_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_v_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_loop(Autoload.get_bool())
