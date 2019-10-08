extends CanvasModulate

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
			
			set_color(Color(randf(),randf(),randf(),randf()))
			
			if Autoload.WRONG_BUGS:
				set_color(Color(randf(),randf(),randf(),randf()))
		else: #RANDI
			if randi() % 2 == 1:
				set_color(Color(randf(),randf(),randf(),randf()))
