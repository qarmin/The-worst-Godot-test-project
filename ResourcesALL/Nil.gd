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
		if !Autoload.RANDI:
			pass
		
#		var q_Nil 
#
#		q_Nil = Nil( PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]) )
#		q_Nil = Nil( PoolVector3Array() )
#		q_Nil = Nil( PoolVector2Array() )
#		q_Nil = Nil( PoolStringArray() )
#		q_Nil = Nil( PoolRealArray() )
#		q_Nil = Nil( PoolIntArray() )
#		q_Nil = Nil( PoolByteArray() )
#		q_Nil = Nil( Array() )
#		q_Nil = Nil( Dictionary() )
#		q_Nil = Nil( Object() )
#		q_Nil = Nil( RID() )
#		q_Nil = Nil( NodePath() )
#		q_Nil = Nil( Color() )
#		q_Nil = Nil( Transform() )
#		q_Nil = Nil( Basis() )
#		q_Nil = Nil( AABB() )
#		q_Nil = Nil( Quat() )
#		q_Nil = Nil( Plane() )
#		q_Nil = Nil( Transform2D() )
#		q_Nil = Nil( Vector3() )
#		q_Nil = Nil( Rect2() )
#		q_Nil = Nil( Vector2() )
#		q_Nil = Nil( String() )
#		q_Nil = Nil( float() )
#		q_Nil = Nil( randi()%50)
#		q_Nil = Nil( bool(randi()%2))
#
#		if Autoload.WRONG_BUGS:
#			pass
