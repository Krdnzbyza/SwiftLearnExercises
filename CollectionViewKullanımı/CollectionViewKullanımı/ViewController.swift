//
//  ViewController.swift
//  CollectionViewKullanımı
//
//  Created by Beyza Karadeniz on 20.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ulkelerCollectionView: UICollectionView!
    
    var ulkelerListesi = [Ulkeler]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        ulkelerCollectionView.delegate = self
        ulkelerCollectionView.dataSource = self
    let u1 = Ulkeler(ulkeId: 1, ulkeAd: "Turkiye", ulkeBaskent: "Ankara")
        let u2 = Ulkeler(ulkeId: 2, ulkeAd: "Fransa", ulkeBaskent: "Paris")
        let u3 = Ulkeler(ulkeId: 3, ulkeAd: "İtalya", ulkeBaskent: "Roma")
        let u4 = Ulkeler(ulkeId: 4, ulkeAd: "İngiltre", ulkeBaskent: "Londra")
        let u5 = Ulkeler(ulkeId: 5, ulkeAd: "Japonya", ulkeBaskent: "Tokyo")
        
        ulkelerListesi.append(u1)
        ulkelerListesi.append(u2)
        ulkelerListesi.append(u3)
        ulkelerListesi.append(u4)
        ulkelerListesi.append(u5)
        
        let tasarim = UICollectionViewFlowLayout()
        //collection cevre boslugu : inset
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //Yatay itemlar arası bosluklar
        tasarim.minimumInteritemSpacing = 5
        // dikeyitemler arası bosluk
        tasarim.minimumLineSpacing = 5
        //toplam yatay bosluk : Sol bosluk:10 sağ bosluk: 10, 3 tane item olacaksa 2 bosluk vardır
        //5 ser
        //Toplam : 10 + 10 + 10 = 30 bosluk
         
        let genislik = self.ulkelerCollectionView.frame.size.width
        tasarim.itemSize = CGSize(width: (genislik - 25)/2, height: (genislik - 30)/3 )
        ulkelerCollectionView!.collectionViewLayout = tasarim

    }
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , HucreProtocol{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkelerListesi.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ulke = ulkelerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! UlkeCollectionViewCell
        cell.ulkeLabel.text = ulke.ulkeAd
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10
        cell.hucreProtocol = self
        cell .indexPath = indexPath
        return cell

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        print(  "\(ulke.ulkeAd!) ülke seçildi ")
        performSegue(withIdentifier: "toDetay", sender: ulke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let ulke = sender as?
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.ulke = ulke
        }
    }
    func buttonTiklandi(indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        print("Button ile \(ulke.ulkeAd!) seçildi")
    }
}
