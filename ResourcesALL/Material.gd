extends Node2D

var q_Material : Material = CanvasItemMaterial.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Material = CanvasItemMaterial.new()

		if randi() % 2 == 1:
			q_Material.set_render_priority(Autoload.get_int())
		if randi() % 2 == 1:
			q_Material.set_next_pass(Material.new())
