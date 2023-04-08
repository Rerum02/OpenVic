extends Control

@onready var _frame : TextureRect = $"../TextureRect"
var _viewport_points : PackedVector2Array

func _draw() -> void:
	if _viewport_points.size() > 1:
		draw_polyline(_viewport_points, Color.WHITE, -1)

func _on_map_view_map_view_camera_changed(near_left : Vector2, far_left : Vector2, far_right : Vector2, near_right : Vector2) -> void:
	_viewport_points.clear()
	_viewport_points.push_back(near_left * _frame.size)
	_viewport_points.push_back(far_left * _frame.size)
	_viewport_points.push_back(far_right * _frame.size)
	_viewport_points.push_back(near_right * _frame.size)
	_viewport_points.push_back(_viewport_points[0])
	queue_redraw()
