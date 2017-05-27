//
//  Contacts.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation
import MessageUI

class Contacts : UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var myText: UITextView!
    @IBOutlet weak var myEmail: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 0)
        
        sendButton.layer.borderWidth = 1
        sendButton.layer.cornerRadius = 12
        sendButton.layer.borderColor = UIColor.red.cgColor
        
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        
        
        let toRecipients = [myEmail.text!]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
            mc.setSubject("Hi my name is Bekbolat")
        mc.setToRecipients(toRecipients)
        
        self.present(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            NSLog("Mail Cancelled")
        case MFMailComposeResult.saved.rawValue:
            NSLog("Mail Saved")
        case MFMailComposeResult.sent.rawValue:
            NSLog("Mail Sent")
        case MFMailComposeResult.failed.rawValue:
            NSLog("Mail Send Failure: %@", [error?.localizedDescription])
        default:
            break
        }
        
        self.dismiss(animated: true, completion: nil)
        
    }
}








