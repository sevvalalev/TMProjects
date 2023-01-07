import UIKit

//Soru 1: Girilen kenar sayısına göre iç açılar toplamını geri döndüren method.

class Total {
    var numberOfEdges: Int?
    
    func total(numberOfEdges: Int) -> Int {
        if numberOfEdges > 2 {
            let sumOfAngles = ((numberOfEdges - 2) * 180)
            print("İç açılar toplamı : \(sumOfAngles)")
            return sumOfAngles
        }else{
            print("Kenar sayısı en az 3 olmalıdır.")
            return numberOfEdges
        }
    }
}
var square = Total()
square.total(numberOfEdges: 1)


// Soru 2: Girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren method.

class Salary {
    func calculate(workDay: Int) -> Int {
        
        let dailyPay = 80
        let total = dailyPay * workDay
        
        if workDay > 20 {
            let withShift = 20 * dailyPay + (workDay - 20) * 20
            print("Mesai ile beraber maaş : \(withShift)")
            return withShift
        }else{
            return total
        }
    }
}
var total = Salary()
total.calculate(workDay: 30)

// Soru 3: Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren method.

class QuotaAmount {
    func amount(quota: Int) -> Int {
        
        let total = quota * 2
        
        if total > 100 {
            let exceed = (quota - 50) * 4 + 100
            print("Aşım ile birlikte fiyatınız : \(exceed)")
            return exceed
        }else{
            print("Kullanım ücreti \(total) tl dir.")
            return total
        }
    }
}

var totalPay = QuotaAmount()
totalPay.amount(quota: 35)
totalPay.amount(quota: 70)

// Soru 4: Parametre olarak girilen dereceyi fahrenhiet'a dönüştürdükten sonra geri döndüren method.

class Fahrenheit {
    func toFahrenheit(degree: Double) -> Double {
        let calculate = (degree * 1.8) + 32
        print("Girilen derece fahrenhayt olarak : \(calculate)")
        return calculate
    }
}
let fah = Fahrenheit()
fah.toFahrenheit(degree: 40)

// Soru 5: Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan method.

class Rectangle {
    func calculate(shortEdge: Int, longEdge: Int) -> Int {
        let calculatePerimeter = 2 * (longEdge + shortEdge)
        print("Dikdörtgenin çevresi : \(calculatePerimeter)")
        return calculatePerimeter
    }
}

let rectangle = Rectangle()
rectangle.calculate(shortEdge: 10, longEdge: 15)

// Soru 6: Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren method.

class Factorial {
    func factorial(number: Int) -> Int {
        var result = 1
        for i in 1...number {
            result *= i
        }
        print("Girilen sayının faktoriyel değeri : \(result)")
        return result
    }
}

let number = Factorial()
number.factorial(number: 5)

// Soru 7: Parametre olarak girilen kelime içinde kaç tane a harfi olduğunu yazdıran method.

func countWord(word: String) -> Int {
    var count = 0
    for character in word {
        if character == "a" {
            count += 1
        }
    }
    print("Yazdığınız kelime içinde a harfi sayısı : \(count)")
    return count
}

let word = countWord(word: "araba")
