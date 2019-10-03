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
		
		var q_Crypto : Crypto = Crypto.new()
		
		qq += str(q_Crypto.generate_random_bytes(randi()%50))
		#qq += str(q_Crypto.generate_rsa(randi()%50))
		#qq += str(q_Crypto.generate_self_signed_certificate(load("res://RES/CryptoKey.tres"), "Szczekacz", "W koło", "Sia"))
		
		
		if Autoload.WRONG_BUGS:
			qq += str(q_Crypto.generate_random_bytes(randi() % 1000 - 500))
			qq += str(q_Crypto.generate_rsa(randi() % 1000 - 500))
			qq += str(q_Crypto.generate_self_signed_certificate(load("res://RES/CryptoKey.tres"), "Szczekacz", "W koło", "Sia"))
