//
//  News.swift
//  SDU
//
//  Created by Бекболат Куанышев on 18.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation

class News : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var newsTableView: UITableView!
    var newsImages = ["charity", "festival", "leicester"]
    var newsText = ["Женский студенческий клуб Vision провел 15 марта очередную благотворительную ярмарку.\n Все знают, что благотворительная ярмарка – это старая добрая традиция СДУ. Никто не остается в стороне – каждый вносит вклад в это доброе дело. И в этот раз с утра до самого вечера преподаватели и студенты провели время с пользой. Как мы заметили, приходили и выпускники университета. Ведь Кермес это – еще и прекрасный повод, чтобы встретиться с дорогими им людьми. На ярмарке девочки клуба Vision выставили на продажу торты, сладкую выпечку, пирожные, салаты и напитки. Также на ярмарке можно было купить изделия ручной работы, сделать мехенди и флэш-тату, поиграть в интересные игры и просто поднять настроение. В конце мероприятия торты было проданы на аукционы. Все вырученные средства будут использованы в благотворительных целях. Ярмарка добра – очень важное мероприятие для СДУ. Потому что мы знаем, что творить добро по силам каждому.", "One of the student clubs PandUp organized a film festival on March 17, where SDU students and teachers watched interesting short video clips. The SDU Film Festival is taking place for the first time this year. Within the framework of this project several teams consisting of students competed in the shooting of short videos. According to the organizers, only 11 out of 26 teams managed to reach the final. They are Lightworks, Halberd, Just Easy Done, Kyran Films, In the Black, ATIP, Estrella, De Ja Vu, Gagle, GOsteam and Nazarov Media. We are sincerely proud of our creative students who tirelessly develop their talents and contribute to the development of the social life of our university. Well done boys!" , "On the 16th of February the President and Vice-Chancellor of the University of Leicester Professor Paul Joseph Boyle and Dr Michael Green who is in charge of the Strategic Partnerships of University of Leicester were honored guests of Suleyman Demirel University. The guests arrived around 13:00 and in the entrance of SDU campus the blue-print was introduced by Enes Kurtay CHIG. After what there was an official meeting at Senate Hall with the rector, vice-rectors and deans of SDU."]
    
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsImages.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsCustomCell
        cell.newsImage.image = UIImage.init(named: newsImages[indexPath.row])
        cell.newsTextView.text = newsText[indexPath.row]
        
        return cell
    }
}
