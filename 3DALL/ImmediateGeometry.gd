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
#				add_sphere(Autoload.get_int(),Autoload.get_int(),Autoload.get_float(),Autoload.get_bool())
#			if randi() % 2 == 1:
#				add_vertex(Autoload.get_vector3())
#			if randi() % 2 == 1:
#				begin(Autoload.get_int(),Autoload.loadA("Sprite.png")) # PrimitiveType
#			if randi() % 2 == 1:
#				clear()
#			if randi() % 2 == 1:
#				end()
#			if randi() % 2 == 1:
#				set_color(Autoload.get_color())
#			if randi() % 2 == 1:
#				set_normal(Autoload.get_vector3())
#			if randi() % 2 == 1:
#				set_tangent(Autoload.get_plane())
#			if randi() % 2 == 1:
#				set_uv(Autoload.get_vector2())
#			if randi() % 2 == 1:
#				set_uv2(Autoload.get_vector2())
