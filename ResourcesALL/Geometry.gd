extends Node2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	pass
#	counter -= delta

#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_Geometry : Geometry = Geometry.new()
#
#		Geometry.build_box_planes(Autoload.get_vector3()))
#		Geometry.build_capsule_planes(Autoload.get_float(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())) # AXIS 
#		Geometry.build_cylinder_planes(Autoload.get_float(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int())) # AXIS 
#
#		Geometry.clip_polygon(Autoload.get_packedvector3array(),Plane(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())))
#		Geometry.clip_polygons_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#		Geometry.clip_polyline_with_polygon_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#
#		Geometry.convex_hull_2d(Autoload.get_packedvector2array()))
#		Geometry.exclude_polygons_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#
#		Geometry.get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Geometry.get_closest_point_to_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.get_closest_point_to_segment_uncapped(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Geometry.get_closest_point_to_segment_uncapped_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.get_closest_points_between_segments(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Geometry.get_closest_points_between_segments_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.get_uv84_normal_bit(Autoload.get_vector3()))
#
#		Geometry.intersect_polygons_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#		Geometry.intersect_polyline_with_polygon_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#
#		Geometry.is_polygon_clockwise(Autoload.get_packedvector2array()))
#		Geometry.line_intersects_line_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.make_atlas(Autoload.get_packedvector2array()))
#		Geometry.merge_polygons_2d(Autoload.get_packedvector2array(),Autoload.get_packedvector2array()))
#
#		Geometry.offset_polygon_2d(Autoload.get_packedvector2array(), Autoload.get_float(), Autoload.get_int())) # PolyJointType
#		Geometry.offset_polyline_2d(Autoload.get_packedvector2array(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int())) # PolyJointType, PackedEndtype
#
#		Geometry.point_is_inside_triangle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.ray_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		Geometry.segment_intersects_circle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_float()))
#		Geometry.segment_intersects_convex(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_array()))
#		Geometry.segment_intersects_cylinder(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float(),Autoload.get_float()))
#		Geometry.segment_intersects_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Geometry.segment_intersects_sphere(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float()))
#		Geometry.segment_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		Geometry.transform_points_2d(Autoload.get_packedvector2array(),Autoload.get_transform2d()))
#
#		Geometry.triangulate_delaunay_2d(Autoload.get_packedvector2array()))
#		Geometry.triangulate_polygon(Autoload.get_packedvector2array()))
