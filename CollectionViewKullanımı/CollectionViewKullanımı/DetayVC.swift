//
//  DetayVC.swift
//  CollectionViewKullanımı
//
//  Created by Beyza Karadeniz on 20.12.2021.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var ulkeAdLabel: UILabel!
    @IBOutlet weak var ulkeBaskentLabel: UILabel!
    
    var ulke:Ulkeler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let u = ulke{
            ulkeAdLabel.text = u.ulkeAd
            ulkeBaskentLabel.text = u.ulkeBaskent
        }    }
    

    @IBAction func vizeButon(_ sender: Any) {
        if let u = ulke{
            print("\(u.ulkeAd!) ülkesine vize bavurusu yapıldı ")
        }
    }
    

}
