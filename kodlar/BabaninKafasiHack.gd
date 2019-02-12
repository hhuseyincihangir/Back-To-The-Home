extends Node2D

func _ready():
	get_tree().paused=true
	degiskenler.toplamBaba=0
	$karekter/fon.play()
	$ui/hud/baslangic.show()
	$ui/hud/tebrikPencere.hide()
	$anim.play("karekterInis")
	pass
func _process(delta):
	$ui/hud/gosterge/HBoxContainer/cocukSkor/HBoxContainer/sayi.text=str(degiskenler.toplamBaba)+" BABA"
	if degiskenler.toplamBaba >= 8:
		get_tree().paused=true

func _on_anim_animation_finished(anim_name):
	if anim_name=="karekterInis":
		$karekter/isik.enabled=true
		$karekter/CollisionShape2D.disabled=false
		$anim.play("efekt")
	pass
