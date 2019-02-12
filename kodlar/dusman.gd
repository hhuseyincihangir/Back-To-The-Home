extends Area2D

func _process(delta):
	look_at(degiskenler.karekterPos)

func _on_dusman_body_entered(body):
	if body.name=="karekter":
		$ses.play()
		degiskenler.karektereBabaCarpti=true
		degiskenler.toplamBaba+=1

func _on_dusman_body_exited(body):
	if body.name=="karekter":
		degiskenler.karektereBabaCarpti=false
