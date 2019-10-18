extends Node2D

onready var counter : float = Autoload.get_rand_time()

#BUG 
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		if randi() % 2 == 1:
#			TranslationServer.add_translation(Autoload.loadA("Translation.tres"))
#		if randi() % 2 == 1:
#			TranslationServer.clear()
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(TranslationServer.get_loaded_locales())
#		if randi() % 2 == 1:
#			Autoload.qq = str(TranslationServer.get_locale())
#		if randi() % 2 == 1:
#			Autoload.qq = str(TranslationServer.get_locale_name(Autoload.get_string()))
#
#		if randi() % 2 == 1:
#			TranslationServer.remove_translation(Autoload.loadA("Translation.tres"))
#		if randi() % 2 == 1:
#			TranslationServer.set_locale(Autoload.get_string())
#		if randi() % 2 == 1:
#			Autoload.qq = str(TranslationServer.translate(Autoload.get_string()))
