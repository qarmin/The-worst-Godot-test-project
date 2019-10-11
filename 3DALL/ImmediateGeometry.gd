extends ImmediateGeometry

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#			if randi() % 2 == 1:
#				add_sphere(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randf(),bool(randi()%2))
#			if randi() % 2 == 1:
#				add_vertex(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
#			if randi() % 2 == 1:
#				begin(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png")) # PrimitiveType
#			if randi() % 2 == 1:
#				clear()
#			if randi() % 2 == 1:
#				end()
#			if randi() % 2 == 1:
#				set_color(Color(randf(),randf(),randf(),randf()))
#			if randi() % 2 == 1:
#				set_normal(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
#			if randi() % 2 == 1:
#				set_tangent(Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
#			if randi() % 2 == 1:
#				set_uv(Vector2(Autoload.get_randf(),Autoload.get_randf()))
#			if randi() % 2 == 1:
#				set_uv2(Vector2(Autoload.get_randf(),Autoload.get_randf()))
