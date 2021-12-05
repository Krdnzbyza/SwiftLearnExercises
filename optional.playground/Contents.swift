import UIKit

var str : String? = nil
var str1 : String?

str = "Merhaba"
if str != nil {
    print(str!)//unwrap
}
else {
    print("str nil deger içeriyor")
}
if let temp = str { //optionalBinding
    print(temp)
}else{
    print("str nil deger içeriyor")
}

if var temp = str { //optionalBinding
    print(temp)
    temp = "hello"
    print(temp)
}else{
    print("str nil deger içeriyor")
}
