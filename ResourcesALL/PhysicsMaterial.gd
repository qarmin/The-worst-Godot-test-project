extends Node2D

var q_PhysicsMaterial: PhysicsMaterial = PhysicsMaterial.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PhysicsMaterial, true)


func nodeFunction(q_PhysicsMaterial: PhysicsMaterial, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PhysicsMaterial = PhysicsMaterial.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PhysicsMaterial)

	if randi() % 2 == 1:
		q_PhysicsMaterial.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicsMaterial.set_rough(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsMaterial.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicsMaterial.set_absorbent(Autoload.get_bool())
