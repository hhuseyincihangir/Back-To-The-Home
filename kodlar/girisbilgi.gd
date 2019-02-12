extends Control

func _ready():
	$anim.stop()
	$anim.play("metin")

func _on_anim_animation_finished(anim_name):
	get_tree().change_scene("res://haritalar/BaslangicSahne.tscn")
