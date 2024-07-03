class_name PlayerPreparingState
extends State

func enter(parent: Node) -> void:
	var player: Player = parent as Player
	player.arrow_texture_animation_player.play("move")
	player.arrow_texture.show()

func exit(parent: Node) -> void:
	var player: Player = parent as Player
	player.arrow_texture_animation_player.stop()
	player.arrow_texture.hide()

func state_process(_delta: float, parent: Node) -> void:
	if Input.is_action_just_pressed("interact"):
		var player: Player = parent as Player
		shoot_trash(player)
		transitioned.emit(self, "PlayerIdleState")

func shoot_trash(player: Player) -> void:
	var direction: Vector2 = Vector2.UP.rotated(player.arrow_texture.rotation)

	var trash: Trash = player.trash_scene.instantiate() as Trash
	trash.linear_velocity = direction * player.trash_speed
	trash.position = player.trash_spawn.global_position

	get_tree().get_root().add_child(trash)