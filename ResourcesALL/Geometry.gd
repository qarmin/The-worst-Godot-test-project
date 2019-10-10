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
#		var q_Geometry : Geometry = Geometry.new()
#
#		qq += str(Geometry.build_box_planes(Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		qq += str(Geometry.build_capsule_planes(randf() * 50,randf() * 50,randi()%10,randi()%10,randi() % 3)) # AXIS
#		qq += str(Geometry.build_cylinder_planes(randf() * 50,randf() * 50,randi()%10,randi() % 3)) # AXIS
#
#		qq += str(Geometry.clip_polygon(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]),Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50)))
#		qq += str(Geometry.clip_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.clip_polyline_with_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#
#		qq += str(Geometry.convex_hull_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.exclude_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#
#		qq += str(Geometry.get_closest_point_to_segment(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_closest_point_to_segment_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_closest_point_to_segment_uncapped(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_closest_point_to_segment_uncapped_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_closest_points_between_segments(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_closest_points_between_segments_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.get_uv84_normal_bit(Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
#		qq += str(Geometry.intersect_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.intersect_polyline_with_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#
#		qq += str(Geometry.is_polygon_clockwise(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.line_intersects_line_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.make_atlas(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.merge_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#
#		qq += str(Geometry.offset_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), randf() * 50, randi() %3)) # PolyJointType
#		#qq += str(Geometry.offset_polyline_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), randf() * 50, randi() %3, randi() % 5)) # PolyJointType, PoolEndtype
#
#		qq += str(Geometry.point_is_inside_triangle(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.ray_intersects_triangle(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
#		qq += str(Geometry.segment_intersects_circle(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),randf() * 50))
#		qq += str(Geometry.segment_intersects_convex(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),[Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50)]))
#		qq += str(Geometry.segment_intersects_cylinder(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50,randf() * 50))
#		qq += str(Geometry.segment_intersects_segment_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
#		qq += str(Geometry.segment_intersects_sphere(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50))
#		qq += str(Geometry.segment_intersects_triangle(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
#		qq += str(Geometry.transform_points_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))))
#
#		qq += str(Geometry.triangulate_delaunay_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#		qq += str(Geometry.triangulate_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
#
