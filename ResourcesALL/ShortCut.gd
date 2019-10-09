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
		
		var q_ShortCut : ShortCut = ShortCut.new()
		if !Autoload.RANDI:
			
			#q_ShortCut.set_shortcut(InputEvent.new())
			
			qq += str(q_ShortCut.get_as_text())
			
			#qq += str(q_ShortCut.is_shortcut( InputEvent.new()))
			qq += str(q_ShortCut.is_valid())
			
			if Autoload.WRONG_BUGS:
				q_ShortCut.set_shortcut(InputEvent.new())
				
				qq += str(q_ShortCut.get_as_text())
				
				qq += str(q_ShortCut.is_shortcut( InputEvent.new()))
				qq += str(q_ShortCut.is_valid())

		else: #RANDI
			if randi() % 2 == 1:
				q_ShortCut.set_shortcut(InputEvent.new())
				
			if randi() % 2 == 1:
				qq += str(q_ShortCut.get_as_text())
				
			if randi() % 2 == 1:
				qq += str(q_ShortCut.is_shortcut( InputEvent.new()))
			if randi() % 2 == 1:
				qq += str(q_ShortCut.is_valid())
