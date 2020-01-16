import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.30
let usToMex = 18.80

var currency: Currency = .mxn

func convert(_ dollars: Double) -> Double {
    
    switch currency {
    
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMex
    }
}

convert(12)

func convert(_ amountString: String) -> String? {
    let amount = Double(amountString)
   
    guard let unwrappedAmount = amount else {
        return nil
    }
    
    let finalAmount = String(convert(unwrappedAmount))
    return finalAmount
}

convert("10")

