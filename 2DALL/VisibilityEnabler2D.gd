extends VisibilityEnabler2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in range(6):
			set_enabler(i,bool(randi()%2))
			
		if Autoload.WRONG_BUGS:
			for i in range(6):
				set_enabler(i,bool(randi()%2))
