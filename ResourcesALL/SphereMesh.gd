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
		
		var q_SphereMesh : SphereMesh = SphereMesh.new()
		if !Autoload.RANDI:
			
			q_SphereMesh.set_radius(randf() * 50)
			q_SphereMesh.set_height(randf() * 50)
			q_SphereMesh.set_radial_segments(randi()%50)
			q_SphereMesh.set_rings(randi()%10)
			q_SphereMesh.set_is_hemisphere(bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_SphereMesh.set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SphereMesh.set_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SphereMesh.set_radial_segments(randi()%10 - 8)
				q_SphereMesh.set_rings(randi()%15 - 7)
				q_SphereMesh.set_is_hemisphere(bool(randi()%2))

		else: #RANDI
			if randi() % 2 == 1:
				q_SphereMesh.set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SphereMesh.set_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SphereMesh.set_radial_segments(randi()%10 - 8)
			if randi() % 2 == 1:
				q_SphereMesh.set_rings(randi()%15 - 7)
			if randi() % 2 == 1:
				q_SphereMesh.set_is_hemisphere(bool(randi()%2))
