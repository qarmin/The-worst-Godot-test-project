extends Node

const WRONG_BUGS : bool = true
const BASIC_COUTER : int = -10# smaller than 0 doesn't exit project
const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely
const USE_ONLY_ONE_NODE : bool = true

var file : File = File.new()

func _ready():
	if file.open("usr://dane.txt",File.WRITE) != OK:
		printerr("AAAAAAAAAAA")
		get_tree().quit()



func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()

func save_to_file(message : String) -> void:
	file.store_line(message)
	
