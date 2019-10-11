extends Node2D

var q_X509Certificate : X509Certificate = X509Certificate.new()
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
		if randi() % 2 == 1:
			q_X509Certificate = X509Certificate.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_X509Certificate.load("res://TEMP/" + Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(q_X509Certificate.save("res://TEMP/" + Autoload.get_string()))
