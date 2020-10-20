import UIKit

struct Temperature {
    var celcius: Double;
    
    init(celcius: Double){
        self.celcius = celcius;
    }
    
    init(fahrenheit: Double){
        celcius = (fahrenheit - 32) / 1.8;
    }
    
    init(kelvin: Double){
        celcius = kelvin - 273.15;
    }
    
    func getCelciusValus() -> Double{
        return self.celcius;
    }
    
    func getKelvinValue() -> Double{
        self.celcius + 273.15
    }
    
    func getFahrenheitValue() -> Double{
        self.celcius * (9/5) + 32
    }
    
    
}

let temp = Temperature(celcius: 32);
print("C° : \(temp.getCelciusValus())")
print("F° : \(temp.getFahrenheitValue())")
print("K° : \(temp.getKelvinValue())")
