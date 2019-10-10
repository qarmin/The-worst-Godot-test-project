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
			qq += str(q_Crypto.generate_random_bytes(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_Crypto.generate_rsa(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#BUG		if randi() % 2 == 1:
#			qq += str(q_Crypto.generate_self_signed_certificate(Autoload.loadA("res://RES/CryptoKey.tres"), "Szczekacz", "W koło", "Sia"))
