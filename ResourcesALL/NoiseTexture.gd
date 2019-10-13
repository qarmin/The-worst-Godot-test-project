extends Node2D

var q_NoiseTexture : NoiseTexture = NoiseTexture.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
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
