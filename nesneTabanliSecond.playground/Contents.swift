import UIKit

import Darwin

class Ev{
    var pencereSayisi : Int?
    
    init(pencereSayisi : Int) {
        self.pencereSayisi = pencereSayisi
    }
}
class Saray : Ev{
    var kuleSayisi : Int?
    init(kuleSayisi : Int , pencereSayisi : Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

class Villa : Ev{
    var garajVarMi : Bool?
    
    init(garajVarMi : Bool ,  pencereSayisi : Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
        
    }
}

var topkapiSarayi = Saray(kuleSayisi: 30, pencereSayisi: 100)
var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)
print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)
//Kalıtım
class Hayvan {
    func sesCıkar() {
        print("Sesim yok")
    }
}
class Memeli: Hayvan {
    
}
class Kedi : Memeli {
    override func sesCıkar() {
        print("Miyav miyav")
    }
}
class Kopek : Memeli {
    override func sesCıkar() {
        print("Hav Hav")
    }
}
print("*****Hayvan Sonuc")
var hayvan = Hayvan()
hayvan.sesCıkar()
print("*****Memeli Sonuc")

var memeli = Memeli(
)
memeli.sesCıkar()
print("******Kedi Sonuc")
var  kedi = Kedi()
kedi.sesCıkar()
var kopek = Kopek()
kopek.sesCıkar()

var s1 = Saray(kuleSayisi: 4, pencereSayisi: 70)

if s1 is Saray {
    print("saray sınıfından")
} else
{
    print(" saray sınıfından degil!!")
}

//Upcasting

var ev : Ev = Saray(kuleSayisi: 4, pencereSayisi: 70) as Ev
//downcasting
var v = Ev(pencereSayisi: 4) as? Villa

//Protocol

protocol ProtocolFirst{
    var degisken : Int {get set}
    func method1()
    func method2() -> String
}

class ClassA : ProtocolFirst{
    var degisken = 10
    func method1() {
        print("method 1 calisti")
    }
    func method2() -> String {
        return "Method 2 calisti"
    }
}


// bir claassa birden fazla protokol eklenebilir
var a = ClassA()

print(a.degisken)

a.method1()
print(a.method2())

// Extension
extension Int {
    func carp (sayi : Int) -> Int {
        return self*sayi
    }
}
let x = 3.carp(sayi: 4)
print(x)

