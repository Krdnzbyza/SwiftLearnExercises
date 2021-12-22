//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanımı
//
//  Created by Beyza Karadeniz on 19.12.2021.
//

import UIKit

protocol HucreProtocol{
    func butotonTiklandi(indexPath : IndexPath)
}

class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var urunResimImageView: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    
    
    var hucreProtocol : HucreProtocol?
    
    var indexPath: IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func sepeteEkleButon(_ sender: Any) {
        
        hucreProtocol?.butotonTiklandi(indexPath: indexPath!)
    }
    
}
