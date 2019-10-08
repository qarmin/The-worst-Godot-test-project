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
		
		var q_StreamTexture : StreamTexture = StreamTexture.new()
		if !Autoload.RANDI:
			
			#q_StreamTexture.load("res://RES/Sprite" + str(randi()%4 + 1) + ".png")
			
			if Autoload.WRONG_BUGS:
				qq += str(q_StreamTexture.load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_StreamTexture.load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
