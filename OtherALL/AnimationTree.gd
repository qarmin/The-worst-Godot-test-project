extends AnimationTree

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		nodeFunction(self)

func nodeFunction(q_AnimationTree : AnimationTree) -> void:

		if randi() % 2 == 1:
			q_AnimationTree.set_tree_root(AnimationNode.new())
		if randi() % 2 == 1:
			q_AnimationTree.set_animation_player(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			q_AnimationTree.set_active(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimationTree.set_process_mode(Autoload.get_int()) #AnimationProcessMode
		if randi() % 2 == 1:
			q_AnimationTree.set_root_motion_track(Autoload.get_nodepath(self))

		if randi() % 2 == 1:
			q_AnimationTree.advance(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationTree.get_root_motion_transform()
		if randi() % 2 == 1:
			q_AnimationTree.rename_parameter(Autoload.get_string(),Autoload.get_string())
