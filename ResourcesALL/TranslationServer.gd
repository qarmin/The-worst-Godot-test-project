extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#BUG 
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		if randi() % 2 == 1:
#			TranslationServer.add_translation(Autoload.loadA("Translation.tres"))
#		if randi() % 2 == 1:
#			TranslationServer.clear()
#
#		if randi() % 2 == 1:
#			qq += str(TranslationServer.get_loaded_locales())
#		if randi() % 2 == 1:
#			qq += str(TranslationServer.get_locale())
#		if randi() % 2 == 1:
#			qq += str(TranslationServer.get_locale_name(Autoload.get_string()))
#
#		if randi() % 2 == 1:
#			TranslationServer.remove_translation(Autoload.loadA("Translation.tres"))
#		if randi() % 2 == 1:
#			TranslationServer.set_locale(Autoload.get_string())
#		if randi() % 2 == 1:
#			qq += str(TranslationServer.translate(Autoload.get_string()))
