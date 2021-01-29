extends Node2D

var q_BakedLightmapData : BakedLightmapData = BakedLightmapData.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_BakedLightmapData,true)

func nodeFunction(q_BakedLightmapData : BakedLightmapData, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_BakedLightmapData = BakedLightmapData.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_BakedLightmapData)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP

	if randi() % 2 == 1:
		q_BakedLightmapData.set_bounds(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_BakedLightmapData.set_cell_space_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_BakedLightmapData.set_cell_subdiv(Autoload.get_inti(3)) 
	if randi() % 2 == 1:
		q_BakedLightmapData.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmapData.set_octree(Autoload.get_poolbytearray())

	if randi() % 2 == 1:
		q_BakedLightmapData.add_user( Autoload.get_nodepath(self), Resource.new(),Autoload.get_int(),Autoload.get_rect2(),Autoload.get_int())
	if randi() % 2 == 1:
		q_BakedLightmapData.clear_users()
	if randi() % 2 == 1:
		q_BakedLightmapData.get_user_count()
	if randi() % 2 == 1:
		q_BakedLightmapData.get_user_lightmap( Autoload.get_int())
	if randi() % 2 == 1:
		q_BakedLightmapData.get_user_path( Autoload.get_int())
