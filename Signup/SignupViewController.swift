//
//  SignupViewController.swift
//  Karaban
//
//  Created by Michael Wlodawsky on 10/30/19.
//  Copyright © 2019 Karaban. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    var Background: UIView!
    var Background2: UIView!
    var SignupView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup the Background
        Background = UIView()
        Background2 = UIView()
        Background.setDefaultFrame(superView: self.view)
        Background2.setDefaultFrame(superView: self.view)
        Background.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[0])
        Background2.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[1])
        Background2.alpha = 0.0
        
        // Setup Main View
        SignupView = UIView()
        SignupView.setDefaultFrame(superView: self.view)
        SignupView.backgroundColor = UIColor(white: 0.0, alpha: 0.0)
        // Setup Logo and Title
        let logo = "🐪"
        let logoLabel = UILabel(frame: CGRect(x: 0, y: self.view.frame.height * 0.25,
                                              width: 100, height: 50))
        logoLabel.center.x = self.view.center.x
        logoLabel.font = logoLabel.font.withSize(30)
        logoLabel.text = logo
        logoLabel.textAlignment = .center
        let title = "Karaban"
        let titleLabel = UILabel(frame: CGRect(x: 0, y: (self.view.frame.height * 0.25) + 65, width: 200, height: 50))
        titleLabel.center.x = self.view.center.x
        titleLabel.font = UIFont(name: "Cabin-Bold", size: 40)
        titleLabel.textAlignment = .center
        titleLabel.text = title
        SignupView.addSubview(logoLabel)
        SignupView.addSubview(titleLabel)
        
        
        
        // Add Views
        self.view.addSubview(Background)
        self.view.addSubview(Background2)
        self.view.addSubview(SignupView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        backgroundAnimation()
    }
    

    func backgroundAnimation() {
        UIView.animate(withDuration: 5.0, delay: 0.0, options: .allowUserInteraction, animations: {
            if self.Background.alpha == 1.0 {
                self.Background.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[2])
                self.Background.alpha = 0.0
            } else {
                self.Background.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[0])
                self.Background.alpha = 1.0
            }
        }) { (finished) in
            UIView.animate(withDuration: 5.0, delay: 0.0, options: .allowUserInteraction, animations: {
                if self.Background2.alpha == 1.0 {
                    self.Background2.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[1])
                    self.Background2.alpha = 0.0
                } else {
                    self.Background2.backgroundColor = UIColor.hex2Color(hex: UIColor.gradients[3])
                    self.Background2.alpha = 1.0
                }
            }, completion: {
                (finished) in
                self.backgroundAnimation()
            })
        }
    }

}
