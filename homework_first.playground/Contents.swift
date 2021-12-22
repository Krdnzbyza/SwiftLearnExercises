import UIKit



class Data{
    
    var islemNo : Int?
    var ogrNo : Int?
    var ogrAd:String?
    var ogrSoyad : String?
    var cindiyet : String?
    var kitapAdi : String?
    var kitapNo : Int?
    var atarih :Double?
    var vtarih :Double?
    var dtarih:Double?
    var yazarNo : Int?
    var yazarAdi : String?
    var yazarSoyad : String?
    var turNo : Int?
    var turAdi : String?
    var sayfaSayisi : Int?
    var puan : Int?
    
    init() {
    }
}

var islem = Data()
islem.islemNo = 40
islem.ogrNo = 161
islem.kitapNo = 20
islem.atarih = 01.2002
islem.vtarih = 09.2009

var kitap = Data()
kitap.ogrNo = 161
kitap.kitapAdi = "Serenad"
kitap.yazarNo = 19
kitap.turNo = 12
kitap.sayfaSayisi  = 345
kitap.puan = 61

var ogrenci = Data()
ogrenci.ogrNo = 161
ogrenci.ogrAd = "Beyza"
ogrenci.ogrSoyad = "Karadeniz"
ogrenci.cindiyet = "kadın"
ogrenci.dtarih = 09.22

var tur = Data()
tur.turNo = 12
tur.turAdi = "Beyza"

var yazar = Data()
yazar.yazarNo = 46
yazar.yazarAdi = "Ayse"
yazar.yazarSoyad = "kulin"





