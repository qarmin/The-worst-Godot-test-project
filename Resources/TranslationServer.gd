extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		var q_TranslationServer : TranslationServer 
		
		TranslationServer.add_translation(Translation.new())
		TranslationServer.clear()

		qq += str(TranslationServer.get_loaded_locales())
		qq += str(TranslationServer.get_locale())
		qq += str(TranslationServer.get_locale_name("pl"))

		TranslationServer.remove_translation(Translation.new())
		TranslationServer.set_locale("pl")
		qq += str(TranslationServer.translate("pls"))
		
		if Autoload.WRONG_BUGS:
			TranslationServer.add_translation(load("res://RES/Translation.tres"))
			TranslationServer.clear()
	
			qq += str(TranslationServer.get_loaded_locales())
			qq += str(TranslationServer.get_locale())
			qq += str(TranslationServer.get_locale_name("pl"))
	
			TranslationServer.remove_translation(load("res://RES/Translation.tres"))
			TranslationServer.set_locale("pl")
			qq += str(TranslationServer.translate("pls"))
