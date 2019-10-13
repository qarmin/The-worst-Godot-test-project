extends Node2D

var q_CanvasItemMaterial : CanvasItemMaterial = CanvasItemMaterial.new()
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
