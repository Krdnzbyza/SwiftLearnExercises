import UIKit

var ogrenciAdi = "Beyza"
var ogrenciYasi = 22
var ogrenciBoy = 1.68
var ogrenciBasHarf = "b"

print(ogrenciAdi)
print(ogrenciYasi)
print(ogrenciBoy)

var urunId : Int  = 3416
var urunAdi : String = "Kol Saati"
var urunAdet : Int = 100
var urunFiyat : Double = 149.99
var urunTedarikci : String = "Rolex"

print("Ürün id            : \(urunId)")
print("Ürün adı           : \(urunAdi)")
print("Ürün urunAdet      : \(urunAdet)")
print("Ürün urunFiyat     : \(urunFiyat)")
print("Ürün urunTedarikci : \(urunTedarikci)")

//SABİTLER
var sayi = 10
print(sayi)
sayi = 20
print(sayi)
let x = 50

//Tür Dönüsümü
var i : Int = 42
var d : Double = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//Sayısaldan Metine Tür Dönüsümü

var str1 = String(i)
var str2 = String(d)
print(str1)
print(str2)
let fiyat = 14.99
var str3 = "Fiyat \(fiyat)₺"
print(str3)

//Metinen Sayısala Dönüştürme

var yazi = "61"

if var sayi1 = Int(yazi){
    print(sayi1)
    sayi1 = 50
    print(sayi1)
}

//TUPLES
var kisi = ("Beyza" , "Karadeniz")

var ad = kisi.0
var soyad = kisi.1

print(ad)
print(soyad)

kisi.0 = "Yeni Beyza"
kisi.1 = "Yeni Karadeniz"

print(kisi)

var nokta = (x:10 , y:4)

print(nokta.x, nokta.y)


var hataMesaji = (404, "Hata Mesaji")

var (kod , mesaj) = hataMesaji
print(kod)
print(mesaj)


class MilkPurchase {
    let cartons: Int
    let paid: Int

    var change = 0
    var price = 0

    init(cartonCount: Int, moneyPaid: Int) {
        cartons = cartonCount
        paid = moneyPaid
        price = cartonCount * 2
        change = paid - price
    }

}

func purchaseMilk(howManyMilkCartons : Int, howMuchMoneyPaid : Int) -> MilkPurchase {
    // Other logic perhaps
    return MilkPurchase(cartonCount: howManyMilkCartons, moneyPaid: howMuchMoneyPaid)
}

let purchaseRecord = purchaseMilk(howManyMilkCartons: 3, howMuchMoneyPaid: 10)
print(purchaseRecord.change)
