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
			q_CanvasItemMaterial.set_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_light_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # LightMode
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_animation(bool(randi()%2))
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_h_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_v_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CanvasItemMaterial.set_particles_anim_loop(bool(randi()%2))
