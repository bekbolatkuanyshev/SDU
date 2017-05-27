//
//  Gallery.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation

class Gallery : UIViewController {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
        myScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "engineering"), #imageLiteral(resourceName: "SDU"), #imageLiteral(resourceName: "mmdance"), #imageLiteral(resourceName: "faces"), #imageLiteral(resourceName: "law"), #imageLiteral(resourceName: "sport")]
        
        for i in 0..<imageArray.count {
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.myScrollView.frame.width, height: self.myScrollView.frame.height)
            
            myScrollView.contentSize.width = myScrollView.frame.width * CGFloat (i + 1)
            myScrollView.addSubview(imageView)
            
            
        }
        
        
        
    }
    
}
