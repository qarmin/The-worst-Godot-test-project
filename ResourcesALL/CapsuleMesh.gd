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
			
		var q_CapsuleMesh : CapsuleMesh = CapsuleMesh.new()
		if !Autoload.RANDI:
			
			q_CapsuleMesh.set_radius(randf() * 50)
			q_CapsuleMesh.set_mid_height(randf() * 50)
			q_CapsuleMesh.set_radial_segments(randi()%5)
			q_CapsuleMesh.set_rings(randi()%5)
			
			if Autoload.WRONG_BUGS:
				q_CapsuleMesh.set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_CapsuleMesh.set_mid_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_CapsuleMesh.set_radial_segments(randi()%10 - 5)
				q_CapsuleMesh.set_rings(randi()% 10 -5)

		else: #RANDI
			if randi() % 2 == 1:
				q_CapsuleMesh.set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_CapsuleMesh.set_mid_height(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_CapsuleMesh.set_radial_segments(randi()%10 - 5)
			if randi() % 2 == 1:
				q_CapsuleMesh.set_rings(randi()% 10 -5)
