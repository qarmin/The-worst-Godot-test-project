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
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_disabled(bool(randi()%2))
				i.set_shape(i.get_shape())
				i.set_one_way_collision(bool(randi()%2))
				i.set_one_way_collision_margin(randf() * 50)

		set_constant_linear_velocity(Vector2(randf() * 50,randf() * 50))
		set_constant_angular_velocity(randf() * 50)
		#Deprecated set_friction(randf())
		#Deprecated set_bounce(randf())
		set_physics_material_override(load("res://RES/PhysicsMaterial.tres"))
		
		if Autoload.WRONG_BUGS:
			for i in get_children():
				if i.get_name().begins_with("Collision"):
					i.set_disabled(bool(randi()%2))
					i.set_shape(i.get_shape())
					i.set_one_way_collision(bool(randi()%2))
					i.set_one_way_collision_margin(randf() * 1000 - 500)
					
			set_constant_linear_velocity(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_constant_angular_velocity(randf() * 50)
			set_friction(randf() * 1000 - 500)
			set_bounce(randf() * 1000 - 500)
			set_physics_material_override(load("res://RES/PhysicsMaterial.tres"))
