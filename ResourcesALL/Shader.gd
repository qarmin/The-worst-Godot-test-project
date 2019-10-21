extends Node2D

var q_Shader : Shader = Shader.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Shader = Shader.new()

		if randi() % 2 == 1:
			q_Shader.set_code(Autoload.get_string())

		if randi() % 2 == 1:
			q_Shader.get_default_texture_param( Autoload.get_string()))
		if randi() % 2 == 1:
			q_Shader.get_mode())

		if randi() % 2 == 1:
			q_Shader.has_param( Autoload.get_string()))
		if randi() % 2 == 1:
			q_Shader.set_default_texture_param( Autoload.get_string(), Autoload.loadA("Sprite.png"))
