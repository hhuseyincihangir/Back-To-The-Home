extends Path2D

export (int) var hiz=200

onready var dusman_takip=$fallow

func _process(delta):
	var dusmanOffset=dusman_takip.get("offset")
	dusman_takip.set("offset",dusmanOffset+hiz*delta)

func _on_StaticBody2D_body_entered(body):
	degiskenler.karektereBabaCarpti=true
	degiskenler.toplamBaba+=2
