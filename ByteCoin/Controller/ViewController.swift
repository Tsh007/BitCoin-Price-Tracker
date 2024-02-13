import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate,CoinManagerDelegate{
    var coinManager=CoinManager()
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    var curr:String?
    
    @IBOutlet var currencyPicker: UIPickerView!
    @IBOutlet var bitcoinLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinManager.delegate=self
        currencyPicker.dataSource=self
        currencyPicker.delegate=self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        curr=coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: coinManager.currencyArray[row])
    }
    
    func didUpdateData(coin:format) {
        DispatchQueue.main.async {
//            print(coin)
//            print(coin.value)
            self.bitcoinLabel.text=String(format: "%.1f", coin.value)
            self.currencyLabel.text=self.curr?.uppercased()
            
        }
    }


}

