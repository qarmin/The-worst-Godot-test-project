extends CollisionShape2D

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
			set_shape(CircleShape2D.new())
		if randi() % 2 == 1:
			set_disabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_one_way_collision(bool(randi()%2))
		if randi() % 2 == 1:
			set_one_way_collision_margin(bool(randi()%2))
