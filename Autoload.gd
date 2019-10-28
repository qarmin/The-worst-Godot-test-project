extends Node

const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const NOT_A_BUG : bool = false #execute functions which doesn't contains bugs, but shows too much spam in console

const RANGE : int = 10000

############### FUNCTIONS

func get_rand_time():
	return randf() * 0.001  + 0.001

const MAX_NUMBER : int = 1
const MAX_NEWLINE : int = 0

var temp_string : String

func get_string() -> String:
	temp_string = ""
	if MAX_NEWLINE != 0:
		temp_string += str(randi() % MAX_NUMBER)
		for i in range(MAX_NEWLINE):
			if randi() % 2 == 1:
				temp_string += "\n"
	else: 
		temp_string += str(randi() % MAX_NUMBER)

	return temp_string

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

######################OVERLOADED FUNCTIONS

func get_inti(var max_value : int) -> int:
	return int(min(randi(), max_value))

func get_floatf(var max_value : float) -> float:
	return min(get_float(),max_value)

func get_vector2f(var max_value : float) -> Vector2:
	return Vector2(get_floatf(max_value),get_floatf(max_value))

func get_vector3f(var max_value : float) -> Vector3:
	return Vector3(get_floatf(max_value),get_floatf(max_value),get_floatf(max_value))

func get_rect2f(var max_value : float) -> Rect2:
	return Rect2(get_vector2f(max_value),get_vector2f(max_value))

func get_aabbf(var max_value : float) -> AABB:
	return AABB(get_vector3f(max_value),get_vector3f(max_value))
################ LOADING RESOURCES
	
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
"VisualShader.tres":VisualShader.new(),

"CapsuleShape.tres":CapsuleShape.new(),
"RayShape.tres":RayShape.new(),
#"RayShape2D.tres":RayShape2D.new(),
}
