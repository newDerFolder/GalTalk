class_name Gal_BgNode extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 设置锚点填满整个父容器
	anchor_left = 0.0
	anchor_top = 0.0
	anchor_right = 1.0
	anchor_bottom = 1.0
	
	# 偏移设为0
	offset_left = 0
	offset_top = 0
	offset_right = 0
	offset_bottom = 0
	
	# 设置拉伸模式为保持比例覆盖（居中裁剪）
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED  # 或者用 STRETCH_SCALE 完全拉伸
	
