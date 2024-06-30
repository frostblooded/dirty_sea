class_name PlayerIdleState
extends State

func state_process(_delta: float, _player: Node) -> void:
	if Input.is_action_just_pressed("interact"):
		transitioned.emit(self, "PlayerPreparingState")
