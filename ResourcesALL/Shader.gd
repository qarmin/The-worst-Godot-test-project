extends Node2D

var q_Shader: Shader = Shader.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Shader, true)


func nodeFunction(q_Shader: Shader, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Shader = Shader.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Shader)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_Shader.set_code(Autoload.get_string())

	if randi() % 2 == 1:
		q_Shader.get_default_texture_param(Autoload.get_string())
	if randi() % 2 == 1:
		q_Shader.get_mode()

	if randi() % 2 == 1:
		q_Shader.has_param(Autoload.get_string())
	if randi() % 2 == 1:
		q_Shader.set_default_texture_param(Autoload.get_string(), temp_ImageTexture)
