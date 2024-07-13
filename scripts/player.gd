class_name Player
extends Node2D

@export var arrow_texture: TextureRect
@export var arrow_texture_animation_player: AnimationPlayer
@export var trash_scene: PackedScene
@export var trash_speed: float = 10
@export var trash_rotation_speed: float = 10
@export var trash_spawn: Node2D

func _ready() -> void:
	arrow_texture.hide()
