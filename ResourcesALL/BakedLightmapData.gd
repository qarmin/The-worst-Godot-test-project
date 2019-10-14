extends Node2D

var q_BakedLightmapData : BakedLightmapData = BakedLightmapData.new()
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
		if randi() % 2 == 1:
			q_BakedLightmapData = BakedLightmapData.new()
			
		
		if randi() % 2 == 1:
			q_BakedLightmapData.set_bounds(Autoload.get_aabb())
		if randi() % 2 == 1:
			q_BakedLightmapData.set_cell_space_transform(Autoload.get_transform())
		if randi() % 2 == 1:
			q_BakedLightmapData.set_cell_subdiv(randi()%10 -5)
		if randi() % 2 == 1:
			q_BakedLightmapData.set_energy(Autoload.get_float())
		if randi() % 2 == 1:
			q_BakedLightmapData.set_octree(Autoload.get_poolbytearray())
			
		if randi() % 2 == 1:
			q_BakedLightmapData.add_user( Autoload.get_string(), Autoload.loadA("Sprite.png"), Autoload.get_int())
		if randi() % 2 == 1:
			q_BakedLightmapData.clear_users()
		if randi() % 2 == 1:
			qq += str(q_BakedLightmapData.get_user_count())
		if randi() % 2 == 1:
			qq += str(q_BakedLightmapData.get_user_lightmap( Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_BakedLightmapData.get_user_path( Autoload.get_int()) )
