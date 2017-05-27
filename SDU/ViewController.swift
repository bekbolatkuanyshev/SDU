//
//  ViewController.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menu: UIBarButtonItem!
    var varView = Int()
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
        menu.target = self.revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        image.image = UIImage.init(named: "SDU")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
