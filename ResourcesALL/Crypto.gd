extends Node2D

var q_Crypto : Crypto = Crypto.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	#BUGGG
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_Crypto = Crypto.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_Crypto.generate_random_bytes(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_Crypto.generate_rsa(Autoload.get_int()))
#BUG		if randi() % 2 == 1:
#			qq += str(q_Crypto.generate_self_signed_certificate(Autoload.loadA("CryptoKey.tres"), Autoload.get_string(), Autoload.get_string(), Autoload.get_string()))
