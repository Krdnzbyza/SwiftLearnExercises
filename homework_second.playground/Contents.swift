// Soru1
/*
func getChoice() -> String {
    var choice: String?
    print(" Lütfen Fahrenheit değerini giriniz:")
    choice = readLine(strippingNewline: true)!
    return choice!
}
func getTemperature(label: String) -> Double {
    var temperature: Double?
    print("Giriniz " + label + " sıcaklık:")
    temperature = Double(readLine(strippingNewline: true)!)!
    return temperature!
}
func calculateCelsius(fahrenheit: Double) -> Double {
    var celsius: Double?
    celsius = (fahrenheit - 32) * 5 / 9
    return celsius!
}
func calculateFahrenheit(celsius: Double) -> Double {
    var fahrenheit: Double?
    
    fahrenheit = celsius * 9 / 5 + 32
    
    return fahrenheit!
}

func displayResult(temperature: Double, fromLabel: String, result: Double, toLabel: String) {
    print(String(temperature) + "° " + fromLabel + " is " + String(result) + "° " +  toLabel)
}

func main() {
    var choice: String?
    var temperature: Double?
    var result: Double?
    choice = getChoice()
    switch choice {
    case "C", "c":
        temperature = getTemperature(label:"Fahrenheit")
        result = calculateCelsius(fahrenheit:temperature!)
        displayResult(temperature:temperature!, fromLabel:"Fahrenheit", result:result!, toLabel:"Celsius")
    case "F", "f":
        temperature = getTemperature(label:"Celsius")
        result = calculateFahrenheit(celsius:temperature!)
        displayResult(temperature:temperature!, fromLabel:"Celsius", result:result!, toLabel:"Fahrenheit")
    default:
        print("Lütfen çevrim yapılacak değeri giriniz")
    }
}
main()
*/
//Soru2

/*
 func calculateArea(length: Int, width: Int) -> Int {
 let area = length * width
 return area
}
calculateArea(length: 10, width: 20)
*/

//Soru3
/*
func calculateFactorial(of number: Int) -> Int {
    if number == 1 {
        return 1
    } else {
        return number * calculateFactorial(of:number - 1)
    }
}

let fact = calculateFactorial(of: 4)
print("Factorial: ",fact)
*/
