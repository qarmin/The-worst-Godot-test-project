extends ViewportContainer

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
		
		set_stretch(bool(randi()%2))
		set_stretch_shrink(randi()%50 + 5)
		
		
		if Autoload.WRONG_BUGS:
			set_stretch(bool(randi()%2))
			set_stretch_shrink(randi() % Autoload.RANGE - Autoload.RANGE / 2)

	else: #RANDI
		if randi() % 2 == 1:
			set_stretch(bool(randi()%2))
		if randi() % 2 == 1:
			set_stretch_shrink(randi() % Autoload.RANGE - Autoload.RANGE / 2)
