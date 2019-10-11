extends VisibilityNotifier

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_aabb(AABB(Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf()),Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(is_on_screen())
