extends Control

onready var _attack := $Panel/HBox/Attack
onready var _move := $Panel/HBox/Move
onready var _player := $Sprite/AnimationPlayer
onready var _tree := $Sprite/AnimationTree
onready var _machine

func _ready() -> void:
	_machine = _tree.get("parameters/playback")
	_machine.start("Idle")
	Utility.ok(_attack.connect("pressed", self, "_attackPressed"))
	Utility.ok(_move.connect("pressed", self, "_walkPressed"))

func _attackPressed() -> void:
	_machine.travel("Attack")

func _movePressed() -> void:
	_machine.travel("Walk")
