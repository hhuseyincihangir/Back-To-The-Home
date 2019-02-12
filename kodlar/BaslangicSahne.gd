extends Node2D

var cocukDondu=false
var sansurOynadi=true
var bustedOldu = false

func _ready():
	$fon.play()
	$ui/yakalandi.hide()
	$karekterler/anime.clear_caches()
	$karekterler/anime.clear_queue()
	get_tree().paused=false
	$isiklar/salon.enabled=false
	$ui/diyalog.hide()
	$ui/giris.hide()
	$ui/yakalandi.hide()
	$karekterler/anime.play("cocukHareket")
	
func _process(delta):
	degiskenler.cocukPos=$karekterler/cocuk.position
	if degiskenler.oyunBitti and sansurOynadi:
		$karekterler/anime.play("babaKalkar")
		sansurOynadi=false
#	if bustedOldu:
#		#$karekterler/anime.play("sahneBitis")
#		$ui/yakalandi.show()
#		bustedOldu=false

func _on_timer_timeout():
	$ui/giris.hide()	
	if !cocukDondu:
		cocukDondu=true
		$karekterler/anime.play("cocugunDonusu")

func _on_timerYakalandi_timeout():
	get_tree().change_scene("res://ekranlar/AnaMenu.tscn")