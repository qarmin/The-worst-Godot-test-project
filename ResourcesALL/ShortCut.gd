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
		
			var q_ShortCut : ShortCut = ShortCut.new()
			
			#q_ShortCut.set_shortcut(InputEvent.new())
			
			qq += str(q_ShortCut.get_as_text())
			
			#qq += str(q_ShortCut.is_shortcut( InputEvent.new()))
			qq += str(q_ShortCut.is_valid())
			
			if Autoload.WRONG_BUGS:
				q_ShortCut.set_shortcut(InputEvent.new())
				
				qq += str(q_ShortCut.get_as_text())
				
				qq += str(q_ShortCut.is_shortcut( InputEvent.new()))
				qq += str(q_ShortCut.is_valid())
