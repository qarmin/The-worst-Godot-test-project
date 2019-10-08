extends Node2D

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
			
		var q_NoiseTexture : NoiseTexture = NoiseTexture.new()
		if !Autoload.RANDI:
			
			q_NoiseTexture.set_width(randi()%50)
			q_NoiseTexture.set_height(randi()%50)
			q_NoiseTexture.set_seamless(bool(randi()%2))
			q_NoiseTexture.set_as_normalmap(bool(randi()%2))
			q_NoiseTexture.set_bump_strength(randf() * 50)
			q_NoiseTexture.set_noise(OpenSimplexNoise.new())
			
			if Autoload.WRONG_BUGS:
				q_NoiseTexture.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_NoiseTexture.set_height(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_NoiseTexture.set_seamless(bool(randi()%2))
				q_NoiseTexture.set_as_normalmap(bool(randi()%2))
				q_NoiseTexture.set_bump_strength(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_NoiseTexture.set_noise(OpenSimplexNoise.new())

		else: #RANDI
			if randi() % 2 == 1:
				q_NoiseTexture.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_NoiseTexture.set_height(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_NoiseTexture.set_seamless(bool(randi()%2))
			if randi() % 2 == 1:
				q_NoiseTexture.set_as_normalmap(bool(randi()%2))
			if randi() % 2 == 1:
				q_NoiseTexture.set_bump_strength(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_NoiseTexture.set_noise(OpenSimplexNoise.new())
