import Foundation

protocol CoinManagerDelegate{
    func didUpdateData(coin:format)
}

struct CoinManager {
    let baseURL="https://api.coingecko.com/api/v3/exchange_rates"

    
    let currencyArray = ["usd", "aud","cad","cny","eur","gbp","hkd","idr","ils","inr","jpy","mxn","nok","nzd","pln","php","rub","sek","sgd","twd","zar"]
    
    var currency:String?
    
    var delegate:CoinManagerDelegate?
    
    mutating func getCoinPrice(for currency:String){
//        print(currency)
        self.currency=currency
//        let finalURL=baseURL+currency
//        print(finalURL)
//        performRequest(urlString:finalURL)
        performRequest(urlString: baseURL)
    }

    func performRequest(urlString:String){
        
        if let url=URL(string: urlString){
            let session=URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            task.resume()
        }
    }

    func handle(data:Data?,response:URLResponse?,error:Error?){
        if error != nil{
            print(error!)
            return
        }
//        print(data!)
        if let safeData=data{
//            let dataString=String(data:safeData, encoding: .utf8)
//            print(dataString!)
//            print(safeData)
            if let coin = parseJSON(data:safeData){
//                print(coin)
                delegate?.didUpdateData(coin:coin)
            }
            
        }
    }
    
    func parseJSON(data:Data)->format?{
        let decoder=JSONDecoder()
        do{
            let decodedData=try decoder.decode(CoinData.self, from: data)
//            print(decodedData)
//            print("currency \n ")
//            print(currency!)
            let data=format(value: decodedData.rates.getValue(currency: currency!)!)
//            print(data)
            return data
//            print(decodedData)
        }catch{
            print(error)
            return nil
        }
        
    }
}
