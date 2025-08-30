class_name GalTalk

#func _enter_tree() -> void:
	## Initialization of the plugin goes here.
	#pass
#
#
#func _exit_tree() -> void:
	## Clean-up of the plugin goes here.
	#pass

static func message(messageText:String):
	var mes=preload("res://galtalk/galTalk_UI/message/rtlBoxMessage.tscn").instantiate()
	mes.Lposition=Vector2(300,300)
	mes.Lscale=Vector2(1,1)
	mes.Ltext=messageText
	return mes

static func creat_emptyPlayScene():
	var galScene=preload("res://galtalk/galTalk_activity/play_galScene.tscn").instantiate()
	return galScene
static func creat_playSceneToFile(file_path:String):
	var galScene=preload("res://galtalk/galTalk_activity/play_galScene.tscn").instantiate()
	galScene.file_path=file_path
	return galScene

static func creat_galTalkHome():
	var galScene=preload("res://galtalk/galTalk_activity/home_galTalk.tscn").instantiate()
	return galScene

static func creat_galTalkEditor():
	var galScene=preload("res://galtalk/galTalk_activity/edit_galScene.tscn").instantiate()
	return galScene
