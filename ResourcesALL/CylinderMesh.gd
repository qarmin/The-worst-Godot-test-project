extends Node2D

var q_CylinderMesh : CylinderMesh = CylinderMesh.new()
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
			q_CylinderMesh = CylinderMesh.new()
			
		
		if randi() % 2 == 1:
			q_CylinderMesh.set_top_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CylinderMesh.set_bottom_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CylinderMesh.set_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_CylinderMesh.set_radial_segments(randi()%10 - 8)
		if randi() % 2 == 1:
			q_CylinderMesh.set_rings(randi()%10 - 8)
