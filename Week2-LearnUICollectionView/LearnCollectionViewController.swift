//
//  ViewController.swift
//  Week2-LearnUICollectionView
//
//  Created by Alief Ahmad Azies on 24/02/23.
//

import UIKit

class LearnCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        self.collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        
    
        products.append(contentsOf:
            [
                Product(image: "jamtangan", productTitle: "Jam Tangan", productSubTitle: "G-Shock", productPrice: "800.000"),
                Product(image: "kacamata", productTitle: "Kacamata", productSubTitle: "Sunglasses", productPrice: "1.600.000"),
                Product(image: "sepatu", productTitle: "Sepatu", productSubTitle: "Nike Adidas", productPrice: "2.000.000"),
                Product(image: "topi", productTitle: "Topi", productSubTitle: "Topi NY", productPrice:"130.000"),
                Product(image: "jaket", productTitle: "Jaket", productSubTitle: "Jaket bomber", productPrice: "300.000"),
                Product(image: "celana", productTitle: "Celana", productSubTitle: "Celana training", productPrice: "30.000"),
                Product(image: "masker", productTitle: "Masker", productSubTitle: "Masker wajah", productPrice: "9.000"),
                Product(image: "tas", productTitle: "Tas", productSubTitle: "Tas sekolah", productPrice: "100.000")
            ]
        )
        
        title = "List Of Products"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension LearnCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width / 2.2, height: self.collectionView.frame.height / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as? CustomCollectionViewCell else {return UICollectionViewCell()}
        
        cell.imageCollection.image = UIImage(named: products[indexPath.row].image)
        cell.titleLabel.text = products[indexPath.row].productTitle
        cell.subTitleLabel.text = products[indexPath.row].productSubTitle
        cell.priceLabel.text = "Rp\(products[indexPath.row].productPrice)"
        cell.setup()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
}

