//
//  ViewController.swift
//  kullanıcıEtkilesimi
//
//  Created by Beyza Karadeniz on 18.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertGöster(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction (title: "İPTAL", style: .destructive){
            action in print("İptal seçildi")
        }
        
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style:.cancel){
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController , animated: true)
        
    }
    
    @IBAction func actionSheetGöster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction (title: "İPTAL", style: .destructive){
            action in print("İptal seçildi")
        }
        
        alertController.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style:.cancel){
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController , animated: true)
        
        
        
    }
    
    @IBAction func özelAlertGöster(_ sender: Any) {
        
        let alertControl = UIAlertController(title: "Veri Kaydı", message: "", preferredStyle: .alert)
        
        alertControl.addTextField{
            textField in textField.placeholder = "Veri giriniz"
            textField.keyboardType = .emailAddress
        }
        let kaydetAction = UIAlertAction(  title: "Kaydet", style: .cancel ) {
            action in let alinanVeri = (alertControl.textFields![0] as UITextField).text!
            print("Alinan veri : \(alinanVeri)")
        }
        
        alertControl.addAction(kaydetAction)
        self.present(alertControl , animated: true)
        
    }
    
}

