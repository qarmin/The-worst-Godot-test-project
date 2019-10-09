extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) ->  void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
			
		var q_Skin : Skin = Skin.new()
		if !Autoload.RANDI:
			
			q_Skin.add_bind(randi()%50, Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			#q_Skin.clear_binds() TO END
			#qq += str(q_Skin.get_bind_bone(randi()%50))
			qq += str(q_Skin.get_bind_count())
			#qq += str(q_Skin.get_bind_pose(randi()%50))
			#q_Skin.set_bind_bone(randi()%50, randi()%50)
			q_Skin.set_bind_count(randi()%50) 
			#q_Skin.set_bind_pose(randi()%50, Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			
			q_Skin.clear_binds()# CLEAR
	
			
			if Autoload.WRONG_BUGS:
				q_Skin.add_bind(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				#q_Skin.clear_binds() TO END
				qq += str(q_Skin.get_bind_bone(randi() % Autoload.RANGE - Autoload.RANGE / 2)) 
				qq += str(q_Skin.get_bind_count())
				qq += str(q_Skin.get_bind_pose(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				q_Skin.set_bind_bone(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Skin.set_bind_count(randi() % Autoload.RANGE - Autoload.RANGE / 2) 
				q_Skin.set_bind_pose(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
	
				q_Skin.clear_binds()# CLEAR

		else: #RANDI
			if randi() % 2 == 1:
				q_Skin.add_bind(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				#q_Skin.clear_binds() TO END
			if randi() % 2 == 1:
				qq += str(q_Skin.get_bind_bone(randi() % Autoload.RANGE - Autoload.RANGE / 2)) 
			if randi() % 2 == 1:
				qq += str(q_Skin.get_bind_count())
			if randi() % 2 == 1:
				qq += str(q_Skin.get_bind_pose(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_Skin.set_bind_bone(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Skin.set_bind_count(randi() % Autoload.RANGE - Autoload.RANGE / 2) 
			if randi() % 2 == 1:
				q_Skin.set_bind_pose(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
	
			if randi() % 2 == 1:
				q_Skin.clear_binds()# CLEAR
