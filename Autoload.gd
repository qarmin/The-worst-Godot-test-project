extends Node

const WRONG_BUGS : bool = true
const BASIC_COUTER : int = -10# smaller than 0 doesn't exit project
const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const USE_ONLY_ONE_NODE : bool = false#true
const RANDI : bool = true# random functions execution

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
	#file.store_string(message)
	
