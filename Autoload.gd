extends Node

const BASIC_COUTER : int = -10# smaller than 0 doesn't exit project
const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const USE_ONLY_ONE_NODE : bool = false#true
const RANDI : bool = true# random functions execution

const RANGE : int = 2

var file : File = File.new()

func _ready():
	if file.open("user://dane.txt",File.WRITE) != OK:
		printerr("AAAAAAAAAAA")
		get_tree().quit()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()

func save_to_file(message : String) -> void:
	file.store_line(" ||| " + str(OS.get_time()["minute"]) + ":" + str(OS.get_time()["second"]) + " ||| " +message)
	### TOO BIG SPAM file.store_string(message)
	

func get_int() -> int:
	return randi() % RANGE - RANGE / 2
	
func get_float() -> float:
	return randf() * RANGE - RANGE / 2
	
func get_bool() -> bool:
	return bool(randi()%2)

func get_nodes(var node : Node) -> Node:
	if randi() % 3 == 1 && node.get_parent() != null:
		if randi() % 2 == 1 && get_parent().get_child_count() > 0:
			return get_parent().get_child(randi() % get_parent().get_child_count())
		else:
			return get_parent()
	else:
		if randi() % 2 == 1 && get_child_count() > 0:
			return get_child(randi() % get_child_count())
		else:
			return self
			
func get_color() -> Color:
	return Color(get_float(),get_float(),get_float(),get_float())
	
func get_vector2() -> Vector2:
	return Vector2(get_float(),get_float())
	
func get_vector3() -> Vector3:
	return Vector3(get_float(),get_float(),get_float())
### Arrays
func get_poolvector2array() -> PoolVector2Array:
	var pv2a : PoolVector2Array = PoolVector2Array([])
	for i in range(randi() % 10):
		pv2a.append(get_vector2())
	return pv2a
	
func get_poolvector3array() -> PoolVector3Array:
	var pv3a : PoolVector3Array = PoolVector3Array([])
	for i in range(randi() % 10):
		pv3a.append(get_vector3())
	return pv3a
	
func get_poolbytearray() -> PoolByteArray:
	var pba : PoolByteArray = PoolByteArray([])
	for i in range(randi() % 10):
		pba.append(get_int())
	return pba
	
func get_poolcolorarray() -> PoolColorArray:
	var pca : PoolColorArray = PoolColorArray([])
	for i in range(randi() % 10):
		pca.append(get_color())
	return pca
	
func get_poolintarray() -> PoolIntArray:
	var pia : PoolIntArray = PoolIntArray([])
	for i in range(randi() % 10):
		pia.append(get_int())
	return pia
	
func get_poolrealarray() -> PoolRealArray:
	var pra : PoolRealArray = PoolRealArray([])
	for i in range(randi() % 10):
		pra.append(get_float())
	return pra
	
func get_poolstringarray() -> PoolStringArray:
	var psa : PoolStringArray = PoolStringArray([])
	for i in range(randi() % 10):
		psa.append(get_string())
	return psa
	
### End of Arrays
func get_transform2d() -> Transform2D:
	return Transform2D(get_vector2(),get_vector2(),get_vector2())
	
func get_transform() -> Transform:
	return Transform(get_vector3(),get_vector3(),get_vector3(),get_vector3())
	
func get_rect2() -> Rect2:
	return Rect2(get_vector2(),get_vector2())
	
func get_quat() -> Quat:
	return Quat(get_vector3(),get_float())
	
func get_basis() -> Basis:
	return Basis(get_vector3())
	
func get_plane() -> Plane:
	return Plane(get_vector3(),get_float())

func get_aabb() -> AABB:
	return AABB(get_vector3(),get_vector3())

func get_array() -> Array:
	var arr : Array = []
	for i in range(3):
		if randi() % 2 == 1:
			arr.append(get_vector2())
		if randi() % 2 == 1:
			arr.append(get_transform())
		if randi() % 2 == 1:
			arr.append(get_color())
		if randi() % 4 == 1:
			arr.append(ImageTexture.new())
	return arr
	
func get_dictionary() -> Dictionary: # Probably there is better solution
	#var dict : Dictionary = {}
	return {"asfa" : ImageTexture.new(), 242 : 51}
			
func get_nodepath(var node : Node) -> NodePath:
	return NodePath(".")


const MAX_NUMBER : int = 1
const NEWLINE : int = 3

var temp_string : String

func get_string() -> String:
	temp_string = ""
	if NEWLINE != 0:
		temp_string += str(randi() % MAX_NUMBER)
		for i in range(NEWLINE):
			temp_string += "\n"
	else: 
		temp_string += str(randi() % MAX_NUMBER)
		
	return temp_string


func loadA(var name : String):
	if randi() % 2 == 1: # 50% szans
		return load("res://RES/" + names.keys()[randi()%names.size()])
		#names[randi() % names.size()])
	else:
		if randi() % 2 == 1:
			return load("res://RES/" + name)
		else: 
			return names[name]

var names : Dictionary = {"ArrayMesh.tres" : ArrayMesh.new(),
"AudioStreamGenerator.tres": AudioStreamGenerator.new(),
"Bitmap.tres":BitMap.new(),
"CircleShape2D.tres":CircleShape2D.new(),
"CryptoKey.tres":CryptoKey.new(),
"CubeMesh.tres":CubeMesh.new(),
"Curve.tres":Curve.new(),
"Curve2D.tres":Curve2D.new(),
"Curve3D.tres":Curve3D.new(),
"DefaultEnv.tres":Environment.new(),
"DynamicFont.tres":DynamicFont.new(),
"FreeMono.otf":DynamicFontData.new(),
"GDNativeLibrary.tres":GDNativeLibrary.new(),
"Gradient.tres":Gradient.new(),
"InputEventAction.tres":InputEventAction.new(),
#BUG "Multimesh.tres" : MultiMesh.new(),
"NavigationMesh.tres":NavigationMesh.new(),
#"Node.tscn":Node.new(),
"PhysicsMaterial.tres":PhysicsMaterial.new(),
"SpatialMaterial.tres":SpatialMaterial.new(),
"Sprite.png":ImageTexture.new(),
"SpriteFrames.tres":SpriteFrames.new(),
"StyleBoxTexture.tres":StyleBoxTexture.new(),
"Theme.tres":Theme.new(),
"Tileset.tres":TileSet.new(),
"Translation.tres":Translation.new(),
"VideoStreamWebm.tres":VideoStreamWebm.new(),
"VisualShader.tres":VisualShader.new()}
