extends Control

onready var _attack := $Panel/HBox/Attack
onready var _walk := $Panel/HBox/Walk
onready var _player := $Sprite/AnimationPlayer
onready var _tree := $Sprite/AnimationTree
onready var _machine

func _ready() -> void:
	_machine = _tree.get("parameters/playback")
	_machine.start("Idle")
	Utility.ok(_attack.connect("pressed", self, "_attackPressed"))
	Utility.ok(_walk.connect("pressed", self, "_walkPressed"))

func _attackPressed() -> void:
	_machine.travel("Attack")

func _walkPressed() -> void:
	_machine.travel("Walk")
