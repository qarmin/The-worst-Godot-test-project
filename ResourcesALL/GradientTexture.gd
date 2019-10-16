extends Node2D

var q_GradientTexture : GradientTexture = GradientTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_GradientTexture = GradientTexture.new()

		if randi() % 2 == 1:
			q_GradientTexture.set_gradient(Autoload.loadA("Gradient.tres"))
		if randi() % 2 == 1:
			q_GradientTexture.set_width(Autoload.get_int())
