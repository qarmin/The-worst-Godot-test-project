extends Node

const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const NOT_A_BUG : bool = false #execute functions which doesn't contains bugs, but shows too much spam in console

const RANGE : int = 100

var frames_to_show = -1

############### FUNCTIONS

func _process(delta):
	if frames_to_show == 0:
		get_tree().quit()
	frames_to_show -= 1


func get_rand_time():
	return randf() * 1.001  + 3.001

const MAX_NUMBER : int = 15
const MAX_NEWLINE : int = 0

var temp_string : String

func get_not_zero() -> int:
	var not_zero : int = get_int()
	if not_zero == 0:
		not_zero += 1
	return not_zero

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
	
func get_stringname() -> StringName:
	return StringName(get_string())

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

func get_vector2i() -> Vector2i:
	return Vector2i(get_int(),get_int())

func get_vector3() -> Vector3:
	return Vector3(get_float(),get_float(),get_float())
	
func get_vector3i() -> Vector3i:
	return Vector3i(get_int(),get_int(),get_int())
### Arrays
func get_packedvector2array() -> PackedVector2Array:
	var pv2a : PackedVector2Array = PackedVector2Array([])
	for i in range(randi() % 10):
		pv2a.append(get_vector2())
	return pv2a

func get_packedvector3array() -> PackedVector3Array:
	var pv3a : PackedVector3Array = PackedVector3Array([])
	for i in range(randi() % 10):
		pv3a.append(get_vector3())
	return pv3a

func get_packedbytearray() -> PackedByteArray:
	var pba : PackedByteArray = PackedByteArray([])
	for i in range(randi() % 10):
		pba.append(get_int())
	return pba

func get_packedcolorarray() -> PackedColorArray:
	var pca : PackedColorArray = PackedColorArray([])
	for i in range(randi() % 10):
		pca.append(get_color())
	return pca

func get_packedint32array() -> PackedInt32Array:
	var pia : PackedInt32Array = PackedInt32Array([])
	for i in range(randi() % 10):
		pia.append(get_int())
	return pia
	
func get_packedint64array() -> PackedInt64Array:
	var pia : PackedInt64Array = PackedInt64Array([])
	for i in range(randi() % 10):
		pia.append(get_int())
	return pia

func get_packedfloat64array() -> PackedFloat64Array:
	var pra : PackedFloat64Array = PackedFloat64Array([])
	for i in range(randi() % 10):
		pra.append(get_float())
	return pra

func get_packedfloat32array() -> PackedFloat32Array:
	var pra : PackedFloat32Array = PackedFloat32Array([])
	for i in range(randi() % 10):
		pra.append(get_float())
	return pra

func get_packedstringarray() -> PackedStringArray:
	var psa : PackedStringArray = PackedStringArray([])
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
	
func get_vector2ii(var max_value : int) -> Vector2:
	return Vector2(get_inti(max_value),get_inti(max_value))

func get_vector3f(var max_value : float) -> Vector3:
	return Vector3(get_floatf(max_value),get_floatf(max_value),get_floatf(max_value))
	
func get_vector3ii(var max_value : int) -> Vector3:
	return Vector3(get_inti(max_value),get_inti(max_value),get_inti(max_value))

func get_rect2f(var max_value : float) -> Rect2:
	return Rect2(get_vector2f(max_value),get_vector2f(max_value))
	
#func get_rect2i(var max_value : int) -> Vector2:
#	return Vector2(get_vector2f(max_value),get_vector2f(max_value))

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
"Multimesh.tres" : MultiMesh.new(),
"NavigationMesh.tres":NavigationMesh.new(),
#"Node.tscn":Node.new(),
"PhysicsMaterial.tres":PhysicsMaterial.new(),
#"StandardMaterial.tres":StandardMaterial.new(),
"Sprite.png":ImageTexture.new(),
"SpriteFrames.tres":SpriteFrames.new(),
"StyleBoxTexture.tres":StyleBoxTexture.new(),
"Theme.tres":Theme.new(),
"Tileset.tres":TileSet.new(),
"Translation.tres":Translation.new(),
"VideoStreamWebm.tres":VideoStreamWebm.new(),
"VisualShader.tres":VisualShader.new(),

"CapsuleShape.tres":CapsuleShape2D.new(),
"RayShape.tres":RayShape2D.new(),
#"RayShape2D.tres":RayShape2D.new(),
}
