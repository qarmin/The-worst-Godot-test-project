extends Node2D

var q_Material: Material = CanvasItemMaterial.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Material, true)


func nodeFunction(q_Material: Material, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Material = Material.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Material)

	if randi() % 2 == 1:
		q_Material.set_render_priority(Autoload.get_int())
#	if randi() % 2 == 1: #MISSING
#		q_Material.set_next_pass(StandardMaterial3D.new()) #NO PREVENT LOOP
