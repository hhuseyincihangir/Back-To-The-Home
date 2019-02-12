extends Node2D

export (NodePath) var bittiSes

func _on_anime_animation_finished(anim_name):
	if anim_name=="cocukHareket":
		get_parent().get_node("ui/giris").show()
		get_parent().get_node("isiklar/salon").enabled=true
		get_parent().get_node("timer").start()
	elif anim_name=="cocugunDonusu":
		get_parent().get_node("ui/diyalog").show()
	elif anim_name=="babaKalkar":
		#get_parent().bustedOldu = true
#		$anime.play("sahneBitis")
		get_parent().get_node("ui/yakalandi/timerYakalandi").start()
		get_parent().get_node("ui/yakalandi").show()
		get_node(bittiSes).play()
#	elif anim_name=="sahneBitis":
#		print("SAHNE DEGISTIRILIYOR")
#		get_tree().change_scene("res://ekranlar/AnaMenu.tscn")

func _on_end_finished():
	get_node(bittiSes).stop()
