extends Node2D

var q_SphereMesh : SphereMesh = SphereMesh.new()
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
			q_SphereMesh = SphereMesh.new()
		
		
		if randi() % 2 == 1:
			q_SphereMesh.set_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SphereMesh.set_height(Autoload.get_randf())
		if randi() % 2 == 1:
			q_SphereMesh.set_radial_segments(randi()%10 - 8)
		if randi() % 2 == 1:
			q_SphereMesh.set_rings(randi()%15 - 7)
		if randi() % 2 == 1:
			q_SphereMesh.set_is_hemisphere(bool(randi()%2))
