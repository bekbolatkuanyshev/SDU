//
//  BackTableVC.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation

class BackTableVC: UIViewController {
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["News", "Clubs", "Faculties", "Gallery", "SocialNetworks", "Contacts", "Location"]
        
        self.view.backgroundColor = UIColor.white
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableArray[indexPath.row], for: indexPath) as UITableViewCell
        
        //cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
    }
    
}
extension CAGradientLayer {
    
    func backgroundGradientColor() -> CAGradientLayer {
        let topColor = UIColor(red: (88.0/255.0), green: (150.0/255.0), blue:(192.0/255.0), alpha: 0.15)
        let bottomColor = UIColor(red: (97.0/255.0), green: (31.0/255.0), blue:(163.0/255.0), alpha: 0.15)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        return gradientLayer
        
    }
}

