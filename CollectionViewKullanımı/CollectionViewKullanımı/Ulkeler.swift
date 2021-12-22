//
//  Ulkeler.swift
//  CollectionViewKullanımı
//
//  Created by Beyza Karadeniz on 20.12.2021.
//

import Foundation
import UIKit

class Ulkeler {
    var ulkeId : Int?
    var ulkeAd : String?
    var ulkeBaskent : String?
    
    init(){}
    
    init(ulkeId : Int , ulkeAd : String, ulkeBaskent :String ){
        self.ulkeId = ulkeId
        self.ulkeAd = ulkeAd
        self.ulkeBaskent = ulkeBaskent
    }
}
