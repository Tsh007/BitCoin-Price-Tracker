import Foundation

struct CoinData:Codable{
//    let bitcoin:bitcoin
    let rates:rates
}

struct rates:Codable{
    let usd: format
    let aud: format
    let cad: format
    let cny: format
    let eur: format
    let gbp: format
    let hkd: format
    let idr: format
    let ils: format
    let inr: format
    let jpy: format
    let mxn: format
    let nok: format
    let nzd: format
    let pln: format
    let php: format
    let rub: format
    let sek: format
    let sgd: format
    let twd: format
    let zar: format
    
    func getValue(currency:String)->Double?{
        if(currency=="usd"){return usd.value}
        else if(currency=="aud"){
            return aud.value
        }else if(currency=="cad"){
            return cad.value
        }else if(currency=="cny"){
            return cny.value
        }else if(currency=="eur"){
            return eur.value
        }else if(currency=="gbp"){
            return gbp.value
        }else if(currency=="idr"){
            return idr.value
        }else if(currency=="hkd"){
            return hkd.value
        }else if(currency=="ils"){
            return ils.value
        }else if(currency=="inr"){
            return inr.value
        }else if(currency=="jpy"){
            return jpy.value
        }else if(currency=="mxn"){
            return mxn.value
        }else if(currency=="nok"){
            return nok.value
        }else if(currency=="nzd"){
            return nzd.value
        }else if(currency=="pln"){
            return pln.value
        }else if(currency=="php"){
            return php.value
        }else if(currency=="rub"){
            return rub.value
        }else if(currency=="sek"){
            return sek.value
        }else if(currency=="sgd"){
            return sgd.value
        }else if(currency=="twd"){
            return twd.value
        }else if(currency=="zar"){
            return zar.value
        }
        return nil
    }
}

struct format:Codable{
    let value:Double
}


//struct bitcoin:Codable{
//    
//        let usd: Int
//        let aud: Int
//        let cad: Int
//        let cny: Int
//        let eur: Int
//        let gbp: Int
//        let hkd: Int
//        let idr: Int
//        let ils: Int
//        let inr: Int
//        let jpy: Int
//        let mxn: Int
//        let nok: Int
//        let nzd: Int
//        let pln: Int
//        let php: Int
//        let rub: Int
//        let sek: Int
//        let sgd: Int
//        let twd: Int
//        let zar: Int
//    
//    
//    func getValue(for currency: String) -> Int? {
//            let key = currency.lowercased()
//            let mirror = Mirror(reflecting: self)
//            
//            for child in mirror.children {
//                if let label = child.label?.lowercased(), label == key, let value = child.value as? Int {
//                    return value
//                }
//            }
//            
//            return nil
//        }
//    }
//    
////    func getValue(for currency: String) -> String? {
////            switch currency.lowercased() {
////            case "usd": return "usd"
////            case "aud": return "aud"
////            case "cad": return "cad"
////            case "cny": return "cny"
////            case "eur": return "eur"
////            case "gbp": return "gbp"
////            case "hkd": return "hkd"
////            case "idr": return "idr"
////            case "ils": return "ils"
////            case "inr": return "inr"
////            case "jpy": return "jpy"
////            case "mxn": return "mxn"
////            case "nok": return "nok"
////            case "nzd": return "nzd"
////            case "pln": return "pln"
////            case "php": return "php"
////            case "rub": return "rub"
////            case "sek": return "sek"
////            case "sgd": return "sgd"
////            case "twd": return "twd"
////            case "zar": return "zar"
////            default: return nil
////            }
////        }
//    
////    func getFvalue()->Int?{
////        return
////    }
//    
//
//
//
