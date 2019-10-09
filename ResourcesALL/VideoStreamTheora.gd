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
		
		var q_VideoStreamTheora : VideoStreamTheora = VideoStreamTheora.new()
		if !Autoload.RANDI:
			
			qq += str(q_VideoStreamTheora.get_file())
			q_VideoStreamTheora.set_file( "Pewnosc" )
			
			if Autoload.WRONG_BUGS:
				qq += str(q_VideoStreamTheora.get_file())
				q_VideoStreamTheora.set_file( "Pewnosc" )
		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_VideoStreamTheora.get_file())
			if randi() % 2 == 1:
				q_VideoStreamTheora.set_file( "Pewnosc" )
