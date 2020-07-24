extends BoneAttachment3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_BoneAttachment3D: BoneAttachment3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_BoneAttachment3D)
		AutoObjects.A_Node(q_BoneAttachment3D)
		AutoObjects.A_Node3D(q_BoneAttachment3D)

	if randi() % 2 == 1:
		q_BoneAttachment3D.set_bone_name(Autoload.get_string())
