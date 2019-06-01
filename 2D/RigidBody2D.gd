extends RigidBody2D

func _ready() -> void:
	pass
func _physics_process(delta: float) -> void:
	add_force(Vector2(delta, delta),Vector2(delta, delta))
