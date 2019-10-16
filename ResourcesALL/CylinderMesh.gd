extends Node2D

var q_CylinderMesh : CylinderMesh = CylinderMesh.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CylinderMesh = CylinderMesh.new()

		if randi() % 2 == 1:
			q_CylinderMesh.set_top_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_CylinderMesh.set_bottom_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_CylinderMesh.set_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_CylinderMesh.set_radial_segments(Autoload.get_inti(3))
		if randi() % 2 == 1:
			q_CylinderMesh.set_rings(Autoload.get_inti(3))
