extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
			
		var q_BakedLightmapData : BakedLightmapData = BakedLightmapData.new()
		if !Autoload.RANDI:
			
			q_BakedLightmapData.set_bounds(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_BakedLightmapData.set_cell_space_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_BakedLightmapData.set_cell_subdiv(randi()%5)
			q_BakedLightmapData.set_energy(randf() * 50)
			#q_BakedLightmapData.set_octree(PoolByteArray([11,124,1241,24,21,214,12,11]))
			
			q_BakedLightmapData.add_user( ".", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), randi()%50)
			q_BakedLightmapData.clear_users()
			qq += str(q_BakedLightmapData.get_user_count())
			#qq += str(q_BakedLightmapData.get_user_lightmap( randi()%50))
			#qq += str(q_BakedLightmapData.get_user_path( randi()%50) )
			
			if Autoload.WRONG_BUGS:
				q_BakedLightmapData.set_bounds(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_BakedLightmapData.set_cell_space_transform(Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_BakedLightmapData.set_cell_subdiv(randi()%10 -5)
				q_BakedLightmapData.set_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_BakedLightmapData.set_octree(PoolByteArray([11,124,1241,24,21,214,12,11]))
				
				q_BakedLightmapData.add_user( ".", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_BakedLightmapData.clear_users()
				qq += str(q_BakedLightmapData.get_user_count())
				qq += str(q_BakedLightmapData.get_user_lightmap( randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_BakedLightmapData.get_user_path( randi() % Autoload.RANGE - Autoload.RANGE / 2) )

		else: #RANDI
			if randi() % 2 == 1:
				q_BakedLightmapData.set_bounds(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_BakedLightmapData.set_cell_space_transform(Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				q_BakedLightmapData.set_cell_subdiv(randi()%10 -5)
			if randi() % 2 == 1:
				q_BakedLightmapData.set_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_BakedLightmapData.set_octree(PoolByteArray([11,124,1241,24,21,214,12,11]))
				
			if randi() % 2 == 1:
				q_BakedLightmapData.add_user( ".", load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_BakedLightmapData.clear_users()
			if randi() % 2 == 1:
				qq += str(q_BakedLightmapData.get_user_count())
			if randi() % 2 == 1:
				qq += str(q_BakedLightmapData.get_user_lightmap( randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_BakedLightmapData.get_user_path( randi() % Autoload.RANGE - Autoload.RANGE / 2) )
