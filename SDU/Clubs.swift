//
//  Second.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation

class Clubs : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var clubsTabelView: UITableView!
    var clubsName = ["MMDance", "IT club", "Orlean", "SDU Faces", "Shapagat", "Sport Club", "Vision Club", "Debate"]
    var clubsImages = ["mmdance", "it", "orlean", "faces", "shapagat", "sport", "vision", "debate"]
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 0)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubsName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.clubsImage.image = UIImage.init(named: clubsImages[indexPath.row])
        cell.clubsLabel.text = clubsName[indexPath.row]
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "clubs" {
            let destination = segue.destination as! ClubsDescription
            destination.myClubsName = clubsName[(clubsTabelView.indexPathForSelectedRow?.row)!]
            destination.myClubsImage = clubsImages[(clubsTabelView.indexPathForSelectedRow?.row)!]
            //destination.my_protocol = self
            destination.index = clubsTabelView.indexPathForSelectedRow?.row
        }
    }
}
