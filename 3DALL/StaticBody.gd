extends StaticBody

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

#  Vector2(randf() * 50,randf() * 50)
#  randf() * 50
#  bool(randi()%2)
#  randi()%50

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_shape(BoxShape.new())
				i.set_disabled(bool(randi()%2))
				i.make_convex_from_brothers()
				i.resource_changed(BoxShape.new())

		#Deprecated set_friction(randf())
		#Deprecated set_bounce(randf())
		set_physics_material_override(PhysicsMaterial.new())
		set_constant_linear_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_constant_angular_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))