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
			
		var q_ButtonGroup : ButtonGroup = ButtonGroup.new()
		if !Autoload.RANDI:
			
			qq += str(q_ButtonGroup.get_buttons())
			qq += str(q_ButtonGroup.get_pressed_button())
			
			if Autoload.WRONG_BUGS:
				qq += str(q_ButtonGroup.get_buttons())
				qq += str(q_ButtonGroup.get_pressed_button())

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_ButtonGroup.get_buttons())
			if randi() % 2 == 1:
				qq += str(q_ButtonGroup.get_pressed_button())
