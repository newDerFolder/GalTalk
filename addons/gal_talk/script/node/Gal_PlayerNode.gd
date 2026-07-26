class_name Gal_StagePlayerNode extends Control

@export var stage:Gal_Stage
var cur_block=null

var bg:=TextureRect.new()

func _ready():
	# 设置bg的属性
	setup_bg()

func setup_bg():
	# 设置锚点填满整个父容器
	bg.anchor_left = 0.0
	bg.anchor_top = 0.0
	bg.anchor_right = 1.0
	bg.anchor_bottom = 1.0
	
	# 偏移设为0
	bg.offset_left = 0
	bg.offset_top = 0
	bg.offset_right = 0
	bg.offset_bottom = 0
	
	# 设置拉伸模式为保持比例覆盖（居中裁剪）
	bg.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED  # 或者用 STRETCH_SCALE 完全拉伸
	
	# 或者使用完全拉伸（不保持比例）
	# bg.stretch_mode = TextureRect.STRETCH_SCALE
	
	add_child(bg)
	# 将bg移到最底层
	move_child(bg, 0)

func add_BgTextNode(blcok:Gal_BgTextBlock):
	var lab=Label.new()
	lab.text=blcok.text
	
	# 设置锚点为居中
	lab.anchor_left = 0.5
	lab.anchor_top = 0.5
	lab.anchor_right = 0.5
	lab.anchor_bottom = 0.5
	
	# 设置偏移使中心对齐
	lab.offset_left = -lab.size.x / 2
	lab.offset_top = -lab.size.y / 2
	lab.offset_right = lab.size.x / 2
	lab.offset_bottom = lab.size.y / 2
	add_child(lab)



func play_talk():
	if cur_block==null:
		cur_block=stage.arr[0]
		
	if cur_block is Gal_BgTextBlock:
		add_BgTextNode(cur_block)
	elif cur_block is Gal_BgImageSet:
		bg.texture=cur_block.image
		
