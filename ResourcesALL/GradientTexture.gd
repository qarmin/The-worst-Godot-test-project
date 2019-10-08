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
			
		var q_GradientTexture : GradientTexture = GradientTexture.new()
		if !Autoload.RANDI:
			
			q_GradientTexture.set_gradient(Gradient.new())
			q_GradientTexture.set_width(randi()%50)
			
			if Autoload.WRONG_BUGS:
				q_GradientTexture.set_gradient(Gradient.new())
				q_GradientTexture.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		else: #RANDI
			if randi() % 2 == 1:
				q_GradientTexture.set_gradient(Gradient.new())
			if randi() % 2 == 1:
				q_GradientTexture.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
