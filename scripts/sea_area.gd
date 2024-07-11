extends Area2D

func _ready() -> void:
	Helpers.safe_connect(body_entered, on_body_entered)

func on_body_entered(body: Node) -> void:
	if body.is_in_group("trash"):
		var trash: Trash = body as Trash
		trash.call_deferred("freeze_body")
