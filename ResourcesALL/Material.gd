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
		
#		var q_Material : Material = Material.new()
#
#		q_Material.set_render_priority(randi()%50)
#		q_Material.set_next_pass(Material.new())
#
#		if Autoload.WRONG_BUGS:
#			q_Material.set_render_priority(randi() % 1000 - 500)
#			q_Material.set_next_pass(Material.new())
