//
//  UserViewController.swift
//  TabBarItem
//
//  Created by apple on 2/24/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var mycollectionview: UICollectionView!
    
    
    var imageShow = ["choco","Lemoncake","pinkcake","purplecake","Vanillacake","choco","Lemoncake","pinkcake","purplecake","Vanillacake","choco","Lemoncake","pinkcake","purplecake","Vanillacake"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imageShow.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCollectionViewCell
        
        cell.imgview.image = UIImage(named: imageShow[indexPath.row])
        cell.imgview.layer.cornerRadius = 35
        
       
       
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let images = UIImage(named: imageShow[indexPath.row])
        
        let ImageInfo = GSImageInfo(image: images!, imageMode: .aspectFit)
        let TransitionInfo = GSTransitionInfo(fromView: collectionView)
        let imageViewer = GSImageViewerController(imageInfo: ImageInfo, transitionInfo: TransitionInfo)
        
        present(imageViewer, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
