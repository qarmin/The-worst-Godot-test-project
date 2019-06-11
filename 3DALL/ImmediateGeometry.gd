extends ImmediateGeometry

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		add_sphere(randi()%50,randi()%50,randf() * 50,bool(randi()%2))
#		add_vertex(Vector3(randf() * 50,randf() * 50,randf() * 50))
#		begin(randi() % 7,load("res://Sprite" + str(randi()%4 + 1) + ".png")) # PrimitiveType
#		clear()
#		end()
#		set_color(Color(randf(),randf(),randf(),randf()))
#		set_normal(Vector3(randf() * 50,randf() * 50,randf() * 50))
#		set_tangent(Plane(randf(),randf(),randf(),randf()))
#		set_uv(Vector2(randf() * 50,randf() * 50))
#		set_uv2(Vector2(randf() * 50,randf() * 50))
		
		