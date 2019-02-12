extends Area2D

export (NodePath) var bitisPencere

func _on_bitisLab_body_entered(body):
	if body.name=="karekter":
		get_node(bitisPencere).show()
		get_tree().paused=true