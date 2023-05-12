extends Control

@onready var _attack := $Panel/HBox/Attack
@onready var _walk := $Panel/HBox/Walk
@onready var _turn := $Panel/HBox/Turn
@onready var _mob := $Slime

func _ready() -> void:
	_attack.connect("pressed", _attackPressed)
	_walk.connect("pressed", _walkPressed)
	_turn.connect("pressed", _turnPressed)

func _attackPressed() -> void:
	_mob.attack()

func _walkPressed() -> void:
	_mob.walk()

func _turnPressed() -> void:
	_mob.flip_h = not _mob.flip_h
