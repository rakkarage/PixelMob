extends Sprite

onready var _tree: AnimationTree = $Sprite/AnimationTree
onready var _machine: AnimationNodeStateMachinePlayback = _tree.get("parameters/playback")

const _key := "parameters/Idle/BlendSpace1D/blend_position"

func _ready():
	idle()

# called from animation function track
func randomIdle() -> void:
	_tree[_key] = -1.0 + Random.next(3)

func idle():
	_machine.start("Idle")

func walk():
	_machine.start("Walk")

func attack():
	_machine.start("Attack")
