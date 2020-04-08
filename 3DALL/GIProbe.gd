extends GIProbe

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_GIProbe : GIProbe, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_GIProbe)
		AutoObjects.A_Node(q_GIProbe)
		AutoObjects.A_Node3D(q_GIProbe)
		AutoObjects.A_VisualInstance3D(q_GIProbe)
		
	### START TEMP
	var temp_GIProbeData : GIProbeData = GIProbeData.new()
#?#	AutoResourcesGIProbeData.nodeFunction(temp_GIProbeData)
	
	### END TEMP
	
#MISSING
#	if randi() % 2 == 1:
#		q_GIProbe.set_subdiv(Autoload.get_inti(10)) # Subdiv 
#	if randi() % 2 == 1:
#		q_GIProbe.set_extents(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_GIProbe.set_dynamic_range(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_GIProbe.set_energy(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GIProbe.set_propagation(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GIProbe.set_bias(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GIProbe.set_normal_bias(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_GIProbe.set_interior(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_GIProbe.set_compress(Autoload.get_bool())
##	if randi() % 2 == 1: #BUG NEW
##		q_GIProbe.set_probe_data(temp_GIProbeData)
#
#	if Autoload.SLOW_FUNCTIONS:
#		if randi() % 2 == 1:
#			q_GIProbe.bake(q_GIProbe, Autoload.get_bool())
#		if randi() % 2 == 1:
#			q_GIProbe.debug_bake()
