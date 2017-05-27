//
//  Faculties.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation

class Faculties : UIViewController {
    
    
    @IBOutlet weak var facultiesTextView: UITextView!
    @IBOutlet weak var facultiesSegment: UISegmentedControl!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
        myImageView.image = UIImage(named: "engineering.png")
        self.myImageView.layer.cornerRadius = 40;
        self.myImageView.clipsToBounds = true;
        
        facultiesTextView.font = UIFont(name: "Rubic Light", size: 17.0)
        facultiesTextView.backgroundColor = UIColor.clear
        facultiesTextView.textColor = UIColor.init(red: 78.0/255.0, green: 22.0/255.0, blue: 134.0/255.0, alpha: 1.0)
        facultiesTextView.text = "There is a lack of specialists in the IT sphere in today's market. This demand is increasing every year. Suleyman Demirel University prepares specialists in certain technical areas, one of which is Information Systems. \n During 4 years of intensive training in this specialty students become high-level specialists with technical and management skills. They are familiarized with various areas in IT and they choose what they want to do in the future, whether it is game, mobile or web application development, 3D modeling, data analysis, machine learning, artificial intelligence, or even more."

    }
    
    @IBAction func mySegment(_ sender: Any) {
        super.viewDidLoad()
        switch(facultiesSegment.selectedSegmentIndex)
        {
        case 0:
            myImageView.image = UIImage(named: "engineering.png")
            self.myImageView.layer.cornerRadius = 40
            facultiesTextView.text = "There is a lack of specialists in the IT sphere in today's market. This demand is increasing every year. Suleyman Demirel University prepares specialists in certain technical areas, one of which is Information Systems. \n During 4 years of intensive training in this specialty students become high-level specialists with technical and management skills. They are familiarized with various areas in IT and they choose what they want to do in the future, whether it is game, mobile or web application development, 3D modeling, data analysis, machine learning, artificial intelligence, or even more."
            break
        case 1:
            myImageView.image = UIImage(named: "economics.png")
            self.myImageView.layer.cornerRadius = 40
            facultiesTextView.text = "Bachelor of Economics, specialty «5B050600 – Economy» can perform analytical, research, organizational, managerial and educational (teaching) activities in the following areas: sectoral and regional markets, the economic entities of various organizational and legal forms; improvement of enterprise management system; formation of economic strategy and policy of the enterprises; regulation of social and economic relations at national, sectoral and intra levels.in this specialty Bachelor has a set of special theoretical knowledge and practical skills related to solving the problems of economic and organizational character, the application of modern technologies, information processing, decision making under dynamically changing environment, has sufficient theoretical knowledge to solve practical problems and problems in unusual situations, the conditions of uncertainty and risk."
            break
        case 2:
            myImageView.image = UIImage(named: "law.png")
            self.myImageView.layer.cornerRadius = 40
            facultiesTextView.text = "Bachelors in the field of International Law can find themselves in such areas as diplomatic service, legal practice area of national security, solution of problems of legal regulation of foreign policy and foreign economic activity of the Republic of Kazakhstan, as well as in various authorities of state power and administration, in the sphere of contractual-and-legal regulation of problems of development of world politics and international relations."
            break
        case 3:
            myImageView.image = UIImage(named: "philology.png")
            self.myImageView.layer.cornerRadius = 40
            facultiesTextView.text = "Specialty of Philology (Kazakh Language) serves as an extraordinary center of creativity, inquiry, and discovery with a proud tradition of leadership in scholarship. The undergraduates become familiar with methods of linguistic and literary analysis and acquire a range of generic skills, including the ability for abstract and analytical thinking and synthesis of ideas, the ability to communicate both orally and through the written word in the national language, and the ability to work autonomously and in a team. The program offers not only opportunities for study of all aspects of Kazakh language and its literature, but also a well-developed, diverse, and active community within the University."
            break
        default:
            break
            
        }
    }
    
}
