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
		if !Autoload.RANDI:
		
			var q_PCKPacker : PCKPacker = PCKPacker.new()
			
			qq += str(q_PCKPacker.add_file( "Znam", "Spotkanie" ))
			#qq += str(q_PCKPacker.flush( bool(randi()%2)))
			qq += str(q_PCKPacker.pck_start( "Krzywy",  randi()%50))
			
			if Autoload.WRONG_BUGS:
				qq += str(q_PCKPacker.add_file( "Znam", "Spotkanie" ))
				qq += str(q_PCKPacker.flush( bool(randi()%2)))
				qq += str(q_PCKPacker.pck_start( "Krzywy",  randi() % Autoload.RANGE - Autoload.RANGE / 2))
