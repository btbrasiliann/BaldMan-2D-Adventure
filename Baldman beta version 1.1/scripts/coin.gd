extends Area2D

var coins := 1
@onready var coin_sfx: AudioStreamPlayer2D = $coin_sfx


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$animacao.play("collect")
	coin_sfx.play()
	await $colisao.call_deferred("queue_free")
	

func _on_animacao_animation_finished() -> void:
	queue_free()
