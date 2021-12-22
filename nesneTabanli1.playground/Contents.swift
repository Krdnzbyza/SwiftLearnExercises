import UIKit

class Car {
    
    var color : String?
    var speed : Int?
    var calısıyorMu : Bool?
    init() {
        print("Araba sınıfından nesen oluşturuldu")
    }
    
    init(color : String , speed : Int, calısıyorMu: Bool) {
        self.color = color
        self.speed = speed
        self.calısıyorMu = calısıyorMu
        print("Araba sınıfından dolu constructır ile nesne oluşturuldu")
        
    }//shadowing : constructurlarla ilgili bilgi verir
    func takeInfo(){
        print("*********************")
        print("Color : \(color!)")
        print("Speed : \(speed!)")
        print("Çalışıyor mu  : \(calısıyorMu!)")
        
    }
    
    func calıstır()  {
        calısıyorMu = true
        speed = 3
    }
    func durdur() {
        calısıyorMu = false
        speed = 0
    }
    
    func hizlan(kacKm : Int)  {
        speed! += kacKm
    }
    
    func yavasla(kacKm : Int) {
        speed! -= kacKm
    }
}

var bmw = Car()
//Deger atama

bmw.color = "Purple"
bmw.speed = 100
bmw.calısıyorMu = true

//Deger Okuma
bmw.takeInfo()
bmw.durdur()

var limuzin = Car(color: "green", speed: 3, calısıyorMu: false)
//limuzin.color = "white"
//limuzin.speed = 80
//limuzin.calısıyorMu = false

limuzin.takeInfo()
limuzin.calıstır()
limuzin.takeInfo()

limuzin.hizlan(kacKm: 100)
limuzin.takeInfo()
limuzin.yavasla(kacKm: 53)
limuzin.takeInfo()

class Fonksiyonlar {
    
    func selamla(){
        let sonuc = "Merhaba Beyza"
        print(sonuc)
    }
    
    func selamla1()-> String {
        let sonuc = "Merhaba Beyza"
        return sonuc
    }
    func selamla2(isim: String ) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
        
    }
    func toplama (){
       let toplam = 30+40
        print("Toplama : \(toplam)")
    }
    func toplama1 () -> Int{
        let toplam = 30+40
        return toplam
        
    }
    
    func toplama2(sayi1: Int , sayi2 : Int) -> Int {
        
        let toplam = sayi1 + sayi2
        return toplam
    }
}

var f = Fonksiyonlar()
f.selamla()
 let gelenSonuc = f.selamla1()
print("Gelen sonuc : \(gelenSonuc)")
f.selamla2(isim: "BeyzaTinky")
f.toplama()
let gelenToplam = f.toplama1()
print("Gelen Toplam : \(gelenToplam)")
let sonuc = f.toplama2(sayi1: 50, sayi2: 70)
print("Gelen Sonuc : \(sonuc)")

//Overloading
class Hesaplayici {
    func topla( sayı1 : Int , sayi2 : Int){
        print("toplam : \(sayi2 + sayı1)")
    }
    func topla( sayı1 : Double , sayi2 : Int){
        print("toplam : \(sayı1 + Double(sayi2) )")
    }
    func topla( sayi1 : Int , sayi2 : Double){
        print("toplam : \(Double(sayi1) + sayi2)")
    }
    func topla( sayi1 : Int , sayi2 : Int , ad : String){
        print("Toplama yapan \(ad) toplama sonucu : \(sayi1 + sayi2)")
    }
    
}

var h = Hesaplayici()
h.topla(sayi1: 20, sayi2: 30, ad: "Beyza")

class Asinifi{
    static var x=10;
    static func method(){
        print("Method çalıştı")
    }
}

print(Asinifi.x)
Asinifi.method()
//Enum
enum KonserveBoyut {
    
    case Kucuk
    case Orta
    case Buyuk
    
}

func ucretHesapla(boyut : KonserveBoyut, adet : Int){
    switch boyut {
    case .Kucuk:
        print("Fiyat : \(adet*10) ₺")
    case .Orta:
        print("Fiyat : \(adet*20) ₺")
    case .Buyuk:
        print("Fiyat : \(adet*30) ₺")
    }
}

ucretHesapla(boyut: .Orta, adet: 24)
