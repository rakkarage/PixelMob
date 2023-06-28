extends Sprite2D
class_name Mob

@onready var _tree: AnimationTree = $Tree
@onready var _machine: AnimationNodeStateMachinePlayback = _tree.get("parameters/playback")
const _key := "parameters/Idle/blend_position"
var _idle_animation_probability := {
	-1: 100,
	0: 20,
	1: 1
}

func _ready():
	_machine.travel("Idle")

func randomIdle() -> void:
	_tree[_key] = Random.probability(_idle_animation_probability)

func idle():
	_machine.travel("Idle")

func walk():
	_machine.travel("Walk")

func attack():
	_machine.travel("Attack")
