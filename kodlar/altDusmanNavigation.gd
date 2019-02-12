extends Navigation2D

export (int) var karekterHizi = 40

var hedefNokta = Vector2(1366/2,768/2)
var dusmanlar = []

var karekterAlanda=false
	
func _process(delta):
	dusmanlar = $dusmanlar.get_children()
	
	$dusmanlar/dusman1.look_at(degiskenler.karekterPos)
	if karekterAlanda:
		for dusman in dusmanlar:
			var yol = yolBul(dusman.position,get_parent().find_node("karekter").global_position)
			var mesafe = karekterHizi * delta
			noktayaIlerle(mesafe,yol,dusman)
	
func yolBul(baslangic,bitis):	
	var yol=get_simple_path(baslangic,bitis,false)	
	yol.remove(0)
	return yol
	
func noktayaIlerle(mesafe,yol,dusman):
	var sonNokta = dusman.position  # burada array kullanılacak, for içinde tüm düşmanlara yapılacak
	for i in range(yol.size()):		
		var ikiNoktaArasiUzaklik = sonNokta.distance_to(yol[0])
		if mesafe <= ikiNoktaArasiUzaklik and mesafe >= 0.0:
			dusman.position = sonNokta.linear_interpolate(yol[0], mesafe / ikiNoktaArasiUzaklik)
			break
		elif mesafe <= 0.0:
			dusman.position = yol[0]
			break
		mesafe -= ikiNoktaArasiUzaklik
		sonNokta = yol[0]
		yol.remove(0)

func _on_altDusmanTetik_body_entered(body):
	karekterAlanda=true

func _on_altDusmanTetik_body_exited(body):
	karekterAlanda=false