

import UIKit

class NewExpenseViewController: UIViewController  {
    @IBOutlet weak var dateField: UITextField!
    let picker = UIDatePicker() // 
    
    private let dataSource =  ["Alimentation","Transport","Communication","Divertissement","Imprévus"] // dataSource = Catégories !
   
    private let currency =    ["XOF","GHS","NGN","EUR","USD"] //currency = Devises !
   
    @IBOutlet weak var pickerView: UIPickerView! // Catégories
    @IBOutlet weak var pickerView2: UIPickerView! // Currency
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        pickerView2.dataSource = self
        pickerView2.delegate = self
       
        // Do any additional setup after loading the view.
        
        createDatePicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    func createDatePicker(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolBar.setItems([done], animated: false)
       
        dateField.inputAccessoryView = toolBar
        dateField.inputView = picker
        
            picker.datePickerMode = .date
        

}

     @objc func  donePressed(){
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        dateField.text = "\(dateString)"
        self.view.endEditing(true)
    }
    
}


extension  NewExpenseViewController: UIPickerViewDelegate, UIPickerViewDataSource  {
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if  pickerView == self.pickerView  {
            return dataSource.count
        }
        else {
return currency.count
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == self.pickerView {
            return dataSource[row]
        }
        else{
            return currency[row]
        }
        }
        
        
        
        
        
        
        
        
    }
    

