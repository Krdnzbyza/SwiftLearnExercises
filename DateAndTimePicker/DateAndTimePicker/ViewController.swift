//
//  ViewController.swift
//  DateAndTimePicker
//
//  Created by Kasım Adalan on 19.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfieldTarih: UITextField!
    @IBOutlet weak var textfieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textfieldTarih.inputView = datePicker
        
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels
        }
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textfieldSaat.inputView = timePicker
        
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMetod))
        
        view.addGestureRecognizer(dokunmaAlgilama)
    }
    
    @objc func tarihGoster(datePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        textfieldTarih.text = alinanTarih
    }
    
    @objc func saatGoster(timePicker:UIDatePicker){
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        let alinanSaat = timeFormatter.string(from: timePicker.date)
        textfieldSaat.text = alinanSaat
    }
    
    @objc func dokunmaAlgilamaMetod(){
        print("Dokunma Algılandı")
        view.endEditing(true)
    }
}

