extends Node

const WRONG_BUGS : bool = false
const BASIC_COUTER : int = -10# smaller than 0 doesn't exit project
const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const USE_ONLY_ONE_NODE : bool = false#true
const RANDI : bool = true# random functions execution


const RANGE : int = 10000

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
	

func loadA(var name : String, var random : bool = true):
	if random == true && randi() % 2 == 1: # 50% szans
		return load(names[randi() % names.size()])
	else:
		return load(name)
	
var names : Array = ["ArrayMesh.tres",
"AudioStreamGenerator.tres",
"Bitmap.tres",
"CircleShape2D.tres",
"CryptoKey.tres",
"CubeMesh.tres",
"Curve1.tres",
"Curve2D1.tres",
"Curve2D.tres",
"Curve2.tres",
"Curve3.tres",
"Curve.tres",
"default_env1.tres",
"default_env2.tres",
"DynamicFont1.tres",
"FreeMono.otf",
"GDNativeLibrary.tres",
"Gradient1.tres",
"InputEventAction.tres",
"Multimesh.tres",
"NavigationMesh.tres",
"Node.tscn",
"PhysicsMaterial.tres",
"SpatialMaterial.tres",
"Sprite1.png",
"Sprite2.png",
"Sprite3.png",
"Sprite4.png",
"SpriteFrames.tres",
"StyleBoxTexture.tres",
"Theme.tres",
"Tileset.tres",
"Translation.tres",
"VideoStreamWebm.tres",
"VisualShader.tres"]
