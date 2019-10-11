extends StaticBody2D

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

		if randi() % 2 == 1:
			set_constant_linear_velocity(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			set_constant_angular_velocity(Autoload.get_randf())
		if randi() % 2 == 1:
			set_friction(Autoload.get_randf())
		if randi() % 2 == 1:
			set_bounce(Autoload.get_randf())
		if randi() % 2 == 1:
			set_physics_material_override(Autoload.loadA("res://RES/PhysicsMaterial.tres"))
