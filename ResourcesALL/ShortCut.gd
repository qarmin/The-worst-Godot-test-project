extends Node2D

var q_ShortCut : ShortCut = ShortCut.new()
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
			q_ShortCut = ShortCut.new()
		
		
		if randi() % 2 == 1:
			q_ShortCut.set_shortcut(Autoload.loadA("InputEventAction.tres"))
			
		if randi() % 2 == 1:
			qq += str(q_ShortCut.get_as_text())
			
		if randi() % 2 == 1:
			qq += str(q_ShortCut.is_shortcut(Autoload.loadA("InputEventAction.tres")))
		if randi() % 2 == 1:
			qq += str(q_ShortCut.is_valid())
