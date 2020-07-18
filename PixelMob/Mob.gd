extends Control

onready var _attack := $Panel/HBox/Attack
onready var _walk := $Panel/HBox/Walk
onready var _player := $Sprite/AnimationPlayer
onready var _tree := $Sprite/AnimationTree
onready var _machine: AnimationNodeStateMachinePlayback = _tree.get("parameters/playback")

# TODO: how to make the blend tree pick a random animation when i get back to idle?

func _ready() -> void:
	Utility.ok(_attack.connect("pressed", self, "_attackPressed"))
	Utility.ok(_walk.connect("pressed", self, "_walkPressed"))
	Utility.ok(_player.connect("animation_started", self, "_snimationStarted"))
	Utility.ok(_player.connect("animation_changed", self, "_snimationChanged"))
	Utility.ok(_player.connect("animation_finished", self, "_animationFinished"))
	Utility.ok(_player.connect("caches_cleared", self, "_animationCache"))
	_machine.start("Idle")

func _attackPressed() -> void:
	_machine.travel("Attack")

func _walkPressed() -> void:
	_machine.travel("Walk")

func _animationStarted(name: String) -> void:
	print("started: " % name)

func _animationChanged(oldName: String, newName: String) -> void:
	print("changed: %, %" % [oldName, newName])

func _animationFinished(name: String) -> void:
	print("finished: %" % name)

func _animationCache() -> void:
	print("cache: %" % name)
