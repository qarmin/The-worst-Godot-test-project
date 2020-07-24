extends Node2D

var q_Skin: Skin = Skin.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Skin, true)


func nodeFunction(q_Skin: Skin, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Skin = Skin.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Skin)

	if randi() % 2 == 1:
		q_Skin.add_bind(Autoload.get_int(), Autoload.get_transform())
	if randi() % 2 == 1:
		q_Skin.clear_binds()
	if randi() % 2 == 1:
		q_Skin.get_bind_bone(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skin.get_bind_count()
	if randi() % 2 == 1:
		q_Skin.get_bind_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skin.set_bind_bone(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Skin.set_bind_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skin.set_bind_pose(Autoload.get_int(), Autoload.get_transform())
