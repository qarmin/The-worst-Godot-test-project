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
		if !Autoload.RANDI:
	
			#Deprecated set_friction(randf())
			#Deprecated set_bounce(randf())
			set_physics_material_override(PhysicsMaterial.new())
			set_constant_linear_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
			set_constant_angular_velocity(Vector3(randf() * 50,randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
		
				#Deprecated set_friction(randf())
				#Deprecated set_bounce(randf())
				set_physics_material_override(PhysicsMaterial.new())
				set_constant_linear_velocity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_constant_angular_velocity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
	
		else: #RANDI
				#Deprecated set_friction(randf())
				#Deprecated set_bounce(randf())
			if randi() % 2 == 1:
				set_physics_material_override(PhysicsMaterial.new())
			if randi() % 2 == 1:
				set_constant_linear_velocity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_constant_angular_velocity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
