
class_name GalEditor


static func empty_talk()->Dictionary:
	var temp_talk={
		"talk_kind":"common",
		"talk_chooseList":[],
		"talk_cantChoose":false,
		"background":"res://galtalk/galTalk_sc/galTalkBackground.png",
		#"background_sizeX":1280,
		#"background_sizeY":720,
		#"background_posX":0,
		#"background_posY":0,
		"bgm_res":"",
		"bgm_restart":false,
		"sound_res":"",
		"roles":[],
		"text_role":"无名氏",
		"text_textbox":"请输入内容",
		"text_printTime":0.1,
		"text_panelVisible":true,
		"text_posX":300,
		"text_posY":500,
		
		}
	return temp_talk

static func empty_nextItem()->Dictionary:
	var newItem={
		"text":"",
		"kind":"next",
		"resPath":"",
		"varChoosedKind":"pass",
		"varChangeAim":"",
		"varChangeVal":"",
		"jumpToId":0,
		
	}
	return newItem
