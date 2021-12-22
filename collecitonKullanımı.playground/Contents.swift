import UIKit

var numaralar = [Int]()

var ondalikliSayilar = [10.0 , 20.0 , 30.0]

var sayilar = [Int](repeating: 0, count: 3) // dizi olulturabilir

var meyveler = [String]()
meyveler.append("Elma") //0
meyveler.append("Muz") //1
meyveler.append("Kiraz") //2
print(meyveler)

meyveler[0] = "Yeni Elma"
print(meyveler)

meyveler.insert("portakal", at: 1)
print(meyveler)

print(meyveler.isEmpty) // Boi Dolı Kontrol
print(meyveler.count) // Eleman sayisi
print(meyveler.first!)
print(meyveler.last!)
print(meyveler.contains("kiraz"))

meyveler.reverse()
print(meyveler)
meyveler.sort()
print(meyveler)

for meyve in meyveler {
    print("sonuc 1 : \(meyve)")
}

for (indeks , meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}
meyveler.remove(at: 1)
print(meyveler)

var numbers = [1,2,3,4,5,6,7,8,9]

//var sonuc1 = numbers.filter()

//print(sonuc1)

//var sonuc2 = numbers.filter({ $0 && $7})
//print(sonuc2)

//class

//Set çalışması

var meyveler1 = Set<String>()
meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1)

meyveler1.insert("Amasya Elma")
print(meyveler1)

for meyve in meyveler1 {
    print("sonuc 1 : \(meyve)")
}

for (indeks , meyve) in meyveler1.enumerated() {
    print("\(indeks). -> \(meyve)")
}

print(meyveler1.count)

//Dictionary

var iller = [Int : String]()
iller[61] = "Trabzon"
iller[34] = "İstanbul"
 print(iller)

iller[61] = "Yeni Trabzon"
print(iller)

for (anahtar , deger) in iller {
    
    print("Anahtar : \(anahtar) - Deger : \(deger)")
    
}

iller.removeValue(forKey: 16)
print(iller)
