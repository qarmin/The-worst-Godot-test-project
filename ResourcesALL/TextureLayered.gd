extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_TextureLayered : TextureLayered = TextureLayered.new()
#
#		q_TextureLayered.set_flags(randi() % 7 ) # Flags
#		q_TextureLayered._set_data({Autoload.get_string()})
#
#		q_TextureLayered.create( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), randi() % Image.FORMAT_MAX, randi() % 7 ) # Flags
#
#		qq += str(q_TextureLayered.get_depth())
#		qq += str(q_TextureLayered.get_format())
#		qq += str(q_TextureLayered.get_height())
#		qq += str(q_TextureLayered.get_layer_data( Autoload.get_int() ))
#		qq += str(q_TextureLayered.get_width())
#
#		q_TextureLayered.set_data_partial( Image.new(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int() )
#		q_TextureLayered.set_layer_data( Image.new(), Autoload.get_int() )
#
