extends StaticBody2D


var counter : float
const C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta

	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true

	if counter <= 0:
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_disabled(bool(randi()%2))
				i.set_shape(i.get_shape())
				i.set_one_way_collision(bool(randi()%2))
				i.set_one_way_collision_margin(randf() * 50)

		set_constant_linear_velocity(Vector2(randf() * 50,randf() * 50))
		set_constant_angular_velocity(randf() * 50)
		set_friction(randf())
		set_bounce(randf())
		set_physics_material_override(get_physics_material_override())

#  Vector2(randf() * 50,randf() * 50)
#  randf() * 50
#  bool(randi()%2)
#  randi()%50

		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x