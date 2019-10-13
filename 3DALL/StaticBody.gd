extends StaticBody

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

			#Deprecated set_friction(randf())
			#Deprecated set_bounce(randf())
		if randi() % 2 == 1:
			set_physics_material_override(PhysicsMaterial.new())
		if randi() % 2 == 1:
			set_constant_linear_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_constant_angular_velocity(Autoload.get_vector3())
