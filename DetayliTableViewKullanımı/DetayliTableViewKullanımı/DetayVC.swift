//
//  DetayVC.swift
//  DetayliTableViewKullanımı
//
//  Created by Beyza Karadeniz on 19.12.2021.
//

import UIKit

class DetayVC: UIViewController {
    
    @IBOutlet weak var urunResim: UIImageView!
    
    @IBOutlet weak var urunFiyat: UILabel!

    var urun : Urunler?
// viewDid load 1 kere çalışır
    // willAppear sayfa içerisinde çok kez çalışır
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = urun {
            self.navigationItem.title = u.urunAd
            urunResim.image = UIImage(named: u.urunResimAd!)
            urunFiyat.text = "\(u.urunFiyat!) ₺"
        }
    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let u = urun {
            print("\(u.urunAd!) ürünü \(u.urunFiyat!) fiyatla sepete eklendi")
        }
    }
}
