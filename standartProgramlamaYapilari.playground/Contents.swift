import UIKit

//Karsilastirma Operatorleri

var s1 = 60
var s2 = 50
var y1 = 70
var y2 = 80

print(s1 == s2) //false
print(s1 != s2) //true
print(s1 > s2)  //true
print( s1 >= s2) //true
print(s1 < s2) //false

print(s1 > s2 || y1>y2) //true  OR :şartlardan biri true ise sonuç hep true
print(s1 > s2 && y1>y2 )//false AND:şartlardan biri false ise sonuç hep false dönecektir

//If kullanimi
var yas = 17
var isim = "Mehmet"

if yas > 18 {
    print("Reşitsiniz")
}else {
    print("Resit degilsiniz..")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else if isim == "Mehmet" {
    print("Merhaba Mehmet")
} else {
    print("Tanınmayan Kisi")
}

var a = 10
var b = 20
a == b ? print("Esit") : print("Esit degil")

//Switch
var gun = 9

switch gun {
case 1:
    print("Pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Böyle bir gün bulunmamaktadır")
}
//Donguler
//For
// 1 ile 5 arasında
for  i in 1...5
{
    print("Döngü i : \(i)")
}
// 10 ile 20 arasında 5er artıs

for k in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(k)") // 10 15 20
}

// 20 ile 10 arası 5er azalıs
for y in stride(from: 20, through: 10, by: -5){
    print("Döngü 3 : \(y)") // 20 15 10
}
//While : 1 ile 5

var sayac = 1;
while sayac < 6 {
    print("Döngü 4 : \(sayac)")
  //  sayac = sayac+1,
    sayac+=1 // 1 2 3 4 5
}

//break
for i in 1...5 {
    if i==3 {
        break
    }
    print("Döngü 5 : \(i)")
} //1 2 (3 ü görünce döngüyü kırar)

//continue
for i in 1...5 {
    if i==3 {
        continue
    }
    print("Döngü 6 : \(i)")
} //1 2  4 5 (3 ü atlar)


