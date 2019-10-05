extends CSGMesh

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		#set_mesh(load("res://RES/CubeMesh.tres"))
		set_material(load("res://RES/SpatialMaterial.tres"))
		
		if Autoload.WRONG_BUGS:
			set_mesh(load("res://RES/CubeMesh.tres"))
			set_material(load("res://RES/SpatialMaterial.tres"))
	else: #RANDI
		if randi() % 2 == 1:
			set_mesh(load("res://RES/CubeMesh.tres"))
		if randi() % 2 == 1:
			set_material(load("res://RES/SpatialMaterial.tres"))
