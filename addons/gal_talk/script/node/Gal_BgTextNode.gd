class_name Gal_BgTextNode extends Label


func _ready() -> void:
	# 设置锚点为居中
	anchor_left = 0.5
	anchor_top = 0.5
	anchor_right = 0.5
	anchor_bottom = 0.5
	
	# 设置偏移使中心对齐
	offset_left = -size.x / 2
	offset_top = -size.y / 2
	offset_right = size.x / 2
	offset_bottom = size.y / 2
