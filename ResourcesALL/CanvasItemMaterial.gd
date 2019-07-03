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
		
		var q_CanvasItemMaterial : CanvasItemMaterial = CanvasItemMaterial.new()
		
		q_CanvasItemMaterial.set_blend_mode( randi() % 5) #BlendMode
		q_CanvasItemMaterial.set_light_mode(randi() % 3) # LightMode
		q_CanvasItemMaterial.set_particles_animation(bool(randi()%2))
		q_CanvasItemMaterial.set_particles_anim_h_frames(randi()%50)
		q_CanvasItemMaterial.set_particles_anim_v_frames(randi()%50)
		q_CanvasItemMaterial.set_particles_anim_loop(bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			q_CanvasItemMaterial.set_blend_mode(randi() % 1000 - 500) #BlendMode
			q_CanvasItemMaterial.set_light_mode(randi() % 1000 - 500) # LightMode
			q_CanvasItemMaterial.set_particles_animation(bool(randi()%2))
			q_CanvasItemMaterial.set_particles_anim_h_frames(randi() % 1000 - 500)
			q_CanvasItemMaterial.set_particles_anim_v_frames(randi() % 1000 - 500)
			q_CanvasItemMaterial.set_particles_anim_loop(bool(randi()%2))
