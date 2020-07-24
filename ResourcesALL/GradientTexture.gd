extends Node2D

var q_GradientTexture: GradientTexture = GradientTexture.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_GradientTexture, true)


func nodeFunction(q_GradientTexture: GradientTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_GradientTexture = GradientTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_GradientTexture)

	### START TEMP
	var temp_Gradient: Gradient = Gradient.new()
	AutoResourcesGradient.nodeFunction(temp_Gradient)

	### END TEMP

	if randi() % 2 == 1:
		q_GradientTexture.set_gradient(temp_Gradient)
	if randi() % 2 == 1:
		q_GradientTexture.set_width(Autoload.get_int())
