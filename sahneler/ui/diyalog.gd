extends Control

#export (NodePath) var metinAlani
#export (NodePath) var btn1
#export (NodePath) var btn2
var pos = 0
var soruNum = 0


var metinAlani="VBoxContainer/Panel/MarginContainer/HBoxContainer/VBoxContainer/metin"
var btn1="VBoxContainer/Panel/MarginContainer/HBoxContainer/VBoxContainer/MarginContainer/HBoxContainer/btn1"
var btn2="VBoxContainer/Panel/MarginContainer/HBoxContainer/VBoxContainer/MarginContainer/HBoxContainer/btn2"
var sorular = [
	"Neredeydin bu saate kadar?",
	"Telefonuna niye bakmadın, o telefonu sana süs olsun diye mi aldım?",
	"Sen baya bir şımardın son zamanlarda!.."
	
]
var cevaplar = [
	["Otobüsü kaçırdım...","Arkadaşlarla Takıldık"],
	["Telefonum sessizdeydi.","Müziğin sesi çok yüksekti."],
	["(Başını eğ ve halıyı seyret)","(İlgilenmiyormuş gibi yap)"]
]
	
	
func _ready():
	$click.playing=false
	get_node(metinAlani).set_text(sorular[0])	
	get_node(btn1).set_text(cevaplar[0][0])
	get_node(btn2).set_text(cevaplar[0][1])
	soruNum += 1	
	pass

func _process(delta):
	if soruNum > 3:
		if pos >= 2:# labirente geç
			get_tree().change_scene("res://haritalar/BabaninKafasiHack.tscn")
		else:
			degiskenler.oyunBitti=true
			hide()
	pass


func _on_btn1_pressed():
	$click.play()
	pos += 1
	if (soruNum == 1):
		get_node(metinAlani).set_text(sorular[soruNum])
		get_node(btn1).set_text(cevaplar[soruNum][0])
		get_node(btn2).set_text(cevaplar[soruNum][1])
	elif (soruNum == 2):
		get_node(metinAlani).set_text(sorular[soruNum])
		get_node(btn1).set_text(cevaplar[soruNum][0])
		get_node(btn2).set_text(cevaplar[soruNum][1])
	soruNum += 1
		


func _on_btn2_pressed():
	$click.play()
	if (soruNum == 1):
		get_node(metinAlani).set_text(sorular[soruNum])
		get_node(btn1).set_text(cevaplar[soruNum][0])
		get_node(btn2).set_text(cevaplar[soruNum][1])
	elif (soruNum == 2):
		get_node(metinAlani).set_text(sorular[soruNum])
		get_node(btn1).set_text(cevaplar[soruNum][0])
		get_node(btn2).set_text(cevaplar[soruNum][1])
	soruNum += 1
