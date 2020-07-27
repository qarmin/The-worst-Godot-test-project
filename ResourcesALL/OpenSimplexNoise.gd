extends Node2D

var q_OpenSimplexNoise: OpenSimplexNoise = OpenSimplexNoise.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_OpenSimplexNoise, true)


func nodeFunction(q_OpenSimplexNoise: OpenSimplexNoise, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_OpenSimplexNoise = OpenSimplexNoise.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_OpenSimplexNoise)

	if randi() % 2 == 1:
		q_OpenSimplexNoise.set_seed(Autoload.get_int())
	if randi() % 2 == 1:
		q_OpenSimplexNoise.set_octaves(Autoload.get_int())
	if randi() % 2 == 1:
		q_OpenSimplexNoise.set_period(Autoload.get_float())
	if randi() % 2 == 1:
		q_OpenSimplexNoise.set_persistence(Autoload.get_float())
	if randi() % 2 == 1:
		q_OpenSimplexNoise.set_lacunarity(Autoload.get_float())

	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_image(Autoload.get_inti(50), Autoload.get_inti(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_1d(Autoload.get_inti(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_2d(Autoload.get_inti(50), Autoload.get_inti(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_2dv(Autoload.get_vector2f(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_3d(Autoload.get_inti(50), Autoload.get_inti(50), Autoload.get_inti(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_3dv(Autoload.get_vector3f(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_noise_4d(Autoload.get_inti(50), Autoload.get_inti(50), Autoload.get_inti(50), Autoload.get_inti(50))
	if randi() % 2 == 1:
		q_OpenSimplexNoise.get_seamless_image(Autoload.get_inti(50))
