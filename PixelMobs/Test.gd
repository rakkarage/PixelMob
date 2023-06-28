extends Control

@onready var _attack := $Panel/VBox/Panel/HBox/Attack
@onready var _walk := $Panel/VBox/Panel/HBox/Walk
@onready var _turn := $Panel/VBox/Panel/HBox/Turn
@onready var _mob := $Panel/VBox/Center/Panel/Slime

func _ready() -> void:
	_attack.connect("pressed", _attack_pressed)
	_walk.connect("pressed", _walk_pressed)
	_turn.connect("pressed", _turn_pressed)

func _attack_pressed() -> void:
	_mob.attack()

func _walk_pressed() -> void:
	_mob.walk()

func _turn_pressed() -> void:
	_mob.flip_h = not _mob.flip_h
