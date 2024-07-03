class_name Trash
extends RigidBody2D

@export var shadow: Node2D
@export var lifetime: float = 2

var _spent_lifetime: float = 0
var _height: float = 100

func _process(delta: float) -> void:
	_spent_lifetime += delta
	shadow.position.y = _height

	var lifetime_percent: float = _spent_lifetime / lifetime
	var val: float = lifetime_percent - 0.5
	_height = -(val * val) + 0.3
	_height *= 300

	if _spent_lifetime >= lifetime:
		queue_free()
