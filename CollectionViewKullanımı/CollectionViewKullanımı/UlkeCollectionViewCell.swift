//
//  UlkeCollectionViewCell.swift
//  CollectionViewKullanımı
//
//  Created by Beyza Karadeniz on 20.12.2021.
//

import UIKit
protocol HucreProtocol {
    func buttonTiklandi(indexPath : IndexPath)
}
class UlkeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ulkeLabel: UILabel!
    
    var hucreProtocol : HucreProtocol?
    var indexPath : IndexPath?
    
    @IBAction func secButon(_ sender: Any) {
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
    
}
