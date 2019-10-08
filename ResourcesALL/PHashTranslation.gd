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
			
		var q_PHashTranslation : PHashTranslation = PHashTranslation.new()
		if !Autoload.RANDI:
			
			q_PHashTranslation.generate( Translation.new())
			
			if Autoload.WRONG_BUGS:
				q_PHashTranslation.generate( Translation.new())

		else: #RANDI
			if randi() % 2 == 1:
				q_PHashTranslation.generate( Translation.new())
