extends ProximityGroup

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
			set_group_name(str(randi()%50000))
		if randi() % 2 == 1:
			set_dispatch_mode(Autoload.get_int()) # DispatchMode
		if randi() % 2 == 1:
			set_grid_radius(Autoload.get_vector3())
		if randi() % 2 == 1:
			broadcast(str(randi()%50000), InputEventAction.new())
