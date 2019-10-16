extends Node2D

var q_RandomNumberGenerator : RandomNumberGenerator = RandomNumberGenerator.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_RandomNumberGenerator = RandomNumberGenerator.new()

		if randi() % 2 == 1:
			q_RandomNumberGenerator.set_seed(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(q_RandomNumberGenerator.randf())
		if randi() % 2 == 1:
			Autoload.qq = str(q_RandomNumberGenerator.randf_range( Autoload.get_float(), Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_RandomNumberGenerator.randfn( Autoload.get_float(), Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_RandomNumberGenerator.randi())
		if randi() % 2 == 1:
			Autoload.qq = str(q_RandomNumberGenerator.randi_range( Autoload.get_int(), Autoload.get_int() ))
		if randi() % 2 == 1:
			q_RandomNumberGenerator.randomize()
