extends Node2D
class_name Level

const _DIALOG_SCREEN: PackedScene = preload("res://Sistema de Diálogo/assets/scenes/dialog_screen.tscn")

var _dialog_data: Dictionary = {
	0: {
		"faceset": "res://Sistema de Diálogo/assets/paladin_faceset.png",
		"dialog": "Olá, sejam todos bem-vindos, cornos",
		"title": "Paladino"
	},
	1: {
		"faceset": "res://Sistema de Diálogo/assets/paladin_faceset.png",
		"dialog": "Este é um teste do sistema de diálogo",
		"title": "Paladino"
	},
	2: {
		"faceset": "res://Sistema de Diálogo/assets/mage_faceset.png",
		"dialog": "Agora ta aparecendo um mago",
		"title": "Mago"
	},
	3: {
		"faceset": "res://Sistema de Diálogo/assets/paladin_faceset-b.png",
		"dialog": "Agora voltou pro paladino b",
		"title": "Paladino B"
	},
	4: {
		"faceset": "res://Sistema de Diálogo/assets/mage_faceset-b.png",
		"dialog": "E agora o mago b",
		"title": "Mago b"
	},
}

@export_category("Objects")
@export var _hud: CanvasLayer = null

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		var _new_dialog: DialogScreen = _DIALOG_SCREEN.instantiate()
		_new_dialog.data = _dialog_data
		_hud.add_child(_new_dialog)




