//
//  cityViewController.swift
//  whereApp
//
//  Created by Macbook on 17.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class cityViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionA: UICollectionView!
    
    @IBOutlet weak var collectionB: UICollectionView!
    let locationImages = [UIImage(named: "london"), UIImage(named: "newyork"), UIImage(named: "barcelona"), UIImage(named: "berlin")]
    let locationImages2 = [UIImage(named: "barcelona"), UIImage(named: "london"), UIImage(named: "berlin"), UIImage(named: "newyork")]
    let locationImages3 = [UIImage(named: "newyork"), UIImage(named: "berlin"), UIImage(named: "barcelona"), UIImage(named: "london")]
    let locationnames = ["Angel-in-us-coffee", "Traveller's", "Modern"]
    
   
    override func viewDidLoad() {
        collectionA.delegate = self
        collectionB.delegate = self
        
        collectionA.dataSource = self
        collectionB.dataSource = self

    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionA {
            return 4
        }
        else{
            return 3
        }    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
      /*  let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: "dismissFullscreenImage:")
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true*/
    }
   
    
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
    //    self.navigationController?.isNavigationBarHidden = false
     //   self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
   /* func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cityCollectionViewCell
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        if collectionView == collectionA{
         cell.fimage.addGestureRecognizer(tap)
         cell.simage.addGestureRecognizer(tap)
            cell.timage.addGestureRecognizer(tap)}
        else{
            cell.myimage.addGestureRecognizer(tap)
        }
    }*/
    
    // Use to back from full mode
    func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        sender.view?.removeFromSuperview()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionA {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cityCollectionViewCell
        
        cell.fimage.image = locationImages[indexPath.row]
        cell.simage.image = locationImages2[indexPath.row]
         cell.timage.image = locationImages3[indexPath.row]
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
          /*  let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
            cell.fimage.addGestureRecognizer(tap)
            cell.simage.addGestureRecognizer(tap)
            cell.timage.addGestureRecognizer(tap)*/

        
        return cell
        }
    else{
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! closestplaceCollectionViewCell
    
    cell.myimage.image = locationImages[indexPath.row]
        cell.myname.text = locationnames[indexPath.row]
    //This creates the shadows and modifies the cards a little bit
    cell.contentView.layer.cornerRadius = 4.0
    cell.contentView.layer.borderWidth = 1.0
    cell.contentView.layer.borderColor = UIColor.clear.cgColor
    cell.contentView.layer.masksToBounds = false
    cell.layer.shadowColor = UIColor.gray.cgColor
    cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
    cell.layer.shadowRadius = 4.0
    cell.layer.shadowOpacity = 1.0
    cell.layer.masksToBounds = false
    cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
    
    
    return cell
    }
    
    }
    
    
}
