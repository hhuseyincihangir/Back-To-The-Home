extends Control

func _ready():
	get_tree().paused=false

func _on_btn_baslat_pressed():
	get_tree().change_scene("res://haritalar/GirisBilgi.tscn")

func _on_btn_cikis_pressed():
	get_tree().quit()
