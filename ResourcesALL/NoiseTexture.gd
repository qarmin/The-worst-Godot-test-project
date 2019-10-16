extends Node2D

var q_NoiseTexture : NoiseTexture = NoiseTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#BUG
#		if randi() % 2 == 1:
#			q_NoiseTexture = NoiseTexture.new()
#
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_width(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_height(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_seamless(Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_as_normalmap(Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_bump_strength(Autoload.get_float())
#		if randi() % 2 == 1:
#			q_NoiseTexture.set_noise(OpenSimplexNoise.new())
