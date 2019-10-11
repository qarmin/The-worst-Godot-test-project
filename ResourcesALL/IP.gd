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
#		var q_IP : IP = IP.new()
#			var q_IP : IP = IP.new()
#
#			q_IP.clear_cache("asfafsqwfas")
#			q_IP.erase_resolve_item(Autoload.get_randi())
#
#			qq += str(q_IP.get_local_addresses())
#			qq += str(q_IP.get_resolve_item_address(Autoload.get_randi()))
#			qq += str(q_IP.get_resolve_item_status(Autoload.get_randi()))
#
#			qq += str(q_IP.resolve_hostname("https://duckduckgo.com",Autoload.get_randi()))
#			qq += str(q_IP.resolve_hostname_queue_item("https://duckduckgo.com",Autoload.get_randi()))
