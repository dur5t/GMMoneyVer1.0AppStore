//
//  OtherViewController.swift
//  CurrensyCourses( Senin Course 25.12.19)
//
//  Created by Алексей Чигарских on 22.01.2020.
//  Copyright © 2020 Алексей Чигарских. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
 static let shared = OtherViewController()
    
   let shareManager = ShareManager()
    
    @IBOutlet weak var switchOffBanner: UIButton!
    
    @IBOutlet weak var writeTodeveloper: UIButton!
    
    @IBAction func switchOffBannerAction(_ sender: Any) {
    }
    
    @IBAction func writeToDeveloperAction(_ sender: Any) {
        
        shareManager.sendMail(recepients: ["mukasor@gmail.com"], subject: "Feedback from Currency Courses", text:  "", vc: self) 
    }
    
    
    @IBAction func developerWebsite(_ sender: Any) {
       guard let url = URL(string: "http://surfspotdevelopco.tilda.ws") else { return }
       UIApplication.shared.open(url)
    }
    
   
    @IBAction func rateApp(_ sender: Any) {
    }
    
    
    @IBAction func shareAction(_ sender: Any) {
        
        
    }
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeStyleOfButtons(Button: switchOffBanner)

        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       animationOfButton(item: switchOffBanner)
        
    }

    fileprivate func changeStyleOfButtons(Button: UIButton) {
            let button = Button
           button.layer.borderWidth = 1.0
           button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 20.0
           button.clipsToBounds = true
       }
    func animationOfButton(item: UIButton) {
        let item = item
        UIView.animate(withDuration: 0.6,
        animations: {
            item.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        },
        completion: { _ in
            UIView.animate(withDuration: 0.6) {
                item.transform = CGAffineTransform.identity
            }
        })
    }
    fileprivate func animationOfImage(item: UIImageView ) {
        let item = item
        UIView.animate(withDuration: 0.6,
        animations: {
            item.transform = CGAffineTransform(scaleX: 0.01, y: 0.95)
        },
        completion: { _ in
            UIView.animate(withDuration: 0.6) {
                item.transform = CGAffineTransform.identity
            }
        })
    }
}
