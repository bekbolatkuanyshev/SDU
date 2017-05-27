//
//  ClubsDescription.swift
//  SDU
//
//  Created by Бекболат Куанышев on 29.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class ClubsDescription: UIViewController {

    @IBOutlet weak var ClubsDescription: UITextView!
    @IBOutlet weak var clubsName: UILabel!
    @IBOutlet weak var clubsImage: UIImageView!
    
    var myClubsName : String = String()
    var myClubsImage : String = String()
    var index : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
        self.clubsImage.layer.borderWidth = 1
        self.clubsImage.layer.cornerRadius = 30
        
        self.clubsName.text = myClubsName
        self.clubsImage.image = UIImage.init(named: myClubsImage)
        
        
        switch myClubsName {
    //        "MMDance", "IT club", "Orlean", "SDU Faces", "Shapagat", "Sport Club", "Vision Club", "Debate"
        case "MMDance":
            self.ClubsDescription.text = "MMDance was founded in 2010. The all-men club has been training contemporary and folk dances. The University Club is considered one of the most promising clubs. For years, our club continues to surprise their fans. Until that time the club was involved in many activities in and outside the university."
            break
        case "It Club":
            self.ClubsDescription.text = "IT-club– the most technical club SDU. The purpose of the club is development of the new technologies. Almost 80% of the club members are from the Engineering Faculty, all of them are talented and smart programmers, designers or developers. Despite this, the club has sections for all the faculties: for those who want to start learning programming, and for those already experienced program developers. More experienced programmers make applications for IOS, Android and web-sites."
            break
        case "Orlean":
            self.ClubsDescription.text = "Orlean is one of the first university club. All-women club is exceptionally talented and versatile. The club takes the girls with anydancing style: modern and traditional, here you have an opportunity to set your energy free. The club consists of friendly and, at the same time, talented girls, who will easily teach you dance even you dance like a wood. The club is very active throughout the year: performances at events, organization of flash-mobs, welcoming guests of the University and other major holidays. This club has a unique team spirit and has various costumes."
            break
        case "SDU Faces":
            self.ClubsDescription.text = "SDU Faces, a young but ambitious club enumerates tireless and talented people. The club participates in all major events as the official media, but also functions independently in everyday life. The main purpose of the club is to capture unique moments of student life and present them by means of bright photos, and also to teach photographyto the new members of the club. Our activity can be followed on the official group"
            break
        case "Shapagat":
            self.ClubsDescription.text = "Charity club Shapagat – is one of the oldest and most honored student clubs of SuleymanDemirelUniversity founded in 2001. The mission of the club is to help everyone in need. In particular, the charity club supports orphanages, boarding schools, homes for the elderly people and low-income families. During this time the club gave the children much good and the average person can only envy the number of good deeds done. It is about this unselfish goodness, mercy, patience and understanding. the club's doors are always open for active students who are ready to help. Welcome to Shapagat!"
            break
        case "Sport Club":
            self.ClubsDescription.text = "Sport Club – is a student organization maintaining and propagating healthy lifestyle among students, has a deep history and an excellent reputation. Since the foundation of our university there were only two organizations started by enthusiastic students: «Shapagat» and «Sport Club». Since that time, honoring the memory of the work of our predecessors, «Sport Club» tirelessly working to bring the sport into the university to a higher level, and once again prove to be indispensable in the life of the university.Thedoors of the club are always open for energetic, creative and sporting spirit of students. Club members not only develop physically, but also enhance their organizational abilities. Sport Club organizes many different championships and tournaments, along with active participation in charity events. The most successful and well-known event is considered SFL (Student Football League) – SDU Cup. Also, in addition to the football tournament, the students organize championships in basketball, volleyball, table tennis, arm wrestling and street workout."
            break
        case "Vision Club":
            self.ClubsDescription.text = "Vision club is one of the largest, dedicated and versatile university clubs. The club has been growing and developing now for 13 years, expanding the boundaries for the tireless help to others. The club has its doors open to any girl who wants to do good. Currently the club has more than 100 members, but their number is constantly growing. Vision consists of 5 departments, such as: \n Shapagat–department dedicated to help to people in need; \n Cooking – allows you to learn how to cook delicious food; \n HandMade raises priceless handicraft lovers; \n Activity aims at making the life of the girls more interesting; \n Education will always help to catch up with your studies. \n There is a large number of opportunities and thus, the club pursues the following objectives: help the people in need, unite the beautiful half of the university, teach young girls the necessary skills, personal development and spiritual growth."
            break
        case "Debate":
            self.ClubsDescription.text = "Debate – isan intellectual game, something more than just entertainment. Debate is focused on the development of critical thinking, literacy and political tolerance among young people. They help to be more erudite, thereby achieve self-confidence. This isthe main goal of «SDU Debate Club». All-round development of our students – is the guarantee of their future success and prosperity of the country. \n The three leagues operate in the club: Kazakh, Russian and English. All meetings are held at different times, in three languages allowing the student to attend more games and develop languages. In addition to internal games, training and jobs, debaters participate in city competitions and have already achieved certain success. \n The main purpose of the club is to develop public speaking, logic and reasoning. Become a member of the club, as well as learn how to defend gracefully one’s point of view regardless of his training. Currently the club has more than 60 participants."
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
