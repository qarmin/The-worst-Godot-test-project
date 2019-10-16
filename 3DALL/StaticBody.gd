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

			#Deprecated set_friction(Autoload.get_float())
			#Deprecated set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
		if randi() % 2 == 1:
			set_constant_linear_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_constant_angular_velocity(Autoload.get_vector3())
