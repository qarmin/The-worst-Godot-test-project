extends CanvasModulate

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
	
	#  Color(randf(),randf(),randf(),randf())
	
	
	
	
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_color(Color(1.0 - randf()/24,1.0 - randf()/24,1.0 - randf()/24,1.0 - randf()/24))
		
		if Autoload.WRONG_BUGS:
			set_color(Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))