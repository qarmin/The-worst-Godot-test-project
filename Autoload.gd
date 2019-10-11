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
	

func get_randi() -> int:
	return randi() % Autoload.RANGE - Autoload.RANGE / 2
	
func get_randf() -> float:
	return randf() * Autoload.RANGE - Autoload.RANGE / 2

const MAX_NUMBER : int = 10
const NEWLINE : int = 3

var temp_string : String

func get_string() -> String:
	temp_string = ""
#	if randi() % 2 == 1:
#		temp_string += str(randi() % MAX_NUMBER)
#		for i in range(NEWLINE):
#			temp_string += "\n"
#	else: 
	temp_string += str(randi() % MAX_NUMBER)
		
	return temp_string

func loadA(var name : String, var random : bool = true):
	if random == true && randi() % 2 == 1: # 50% szans
		return load("res://RES/" + names[randi() % names.size()])
	else:
		return load(name)
	
var names : Array = ["ArrayMesh.tres",
"AudioStreamGenerator.tres",
"Bitmap.tres",
"CircleShape2D.tres",
"CryptoKey.tres",
"CubeMesh.tres",
"Curve.tres",
"Curve2D.tres",
"Curve3D.tres",
"DefaultEnv.tres",
"DynamicFont.tres",
"FreeMono.otf",
"GDNativeLibrary.tres",
"Gradient.tres",
"InputEventAction.tres",
"Multimesh.tres",
"NavigationMesh.tres",
"Node.tscn",
"PhysicsMaterial.tres",
"SpatialMaterial.tres",
"Sprite.png",
"SpriteFrames.tres",
"StyleBoxTexture.tres",
"Theme.tres",
"Tileset.tres",
"Translation.tres",
"VideoStreamWebm.tres",
"VisualShader.tres"]
