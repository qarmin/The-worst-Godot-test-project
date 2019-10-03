extends CollisionShape

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_shape(BoxShape.new())
		set_disabled(bool(randi()%2))
		make_convex_from_brothers()
		resource_changed(BoxShape.new())
		
		if Autoload.WRONG_BUGS:
			set_shape(BoxShape.new())
			set_disabled(bool(randi()%2))
			make_convex_from_brothers()
			resource_changed(BoxShape.new())
