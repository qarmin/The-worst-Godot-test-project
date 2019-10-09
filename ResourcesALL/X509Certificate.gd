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
			
		var q_X509Certificate : X509Certificate = X509Certificate.new()
		if !Autoload.RANDI:
			
			#qq += str(q_X509Certificate.load("rasrs"))
			#qq += str(q_X509Certificate.save("rasrs"))
			
			if Autoload.WRONG_BUGS:
				qq += str(q_X509Certificate.load("rasrs"))
				qq += str(q_X509Certificate.save("rasrs"))

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_X509Certificate.load("rasrs"))
		if randi() % 2 == 1:
				qq += str(q_X509Certificate.save("rasrs"))
