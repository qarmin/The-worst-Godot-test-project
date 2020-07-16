extends OmniLight3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_OmniLight3D : OmniLight3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_OmniLight3D)
		AutoObjects.A_Node(q_OmniLight3D)
		AutoObjects.A_Node3D(q_OmniLight3D)
		AutoObjects.A_VisualInstance3D(q_OmniLight3D)
		AutoObjects.A_Light3D(q_OmniLight3D)
		
	if randi() % 2 == 1:
		q_OmniLight3D.set("omni_range",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight3D.set("omni_attenuation",Autoload.get_float())
	if randi() % 2 == 1:
		q_OmniLight3D.set_shadow_mode(Autoload.get_int()) # ShadowMode
