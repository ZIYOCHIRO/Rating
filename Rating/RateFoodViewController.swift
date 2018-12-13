//
//  RateFoodViewController.swift
//  Rating
//
//  Created by 10.12 on 2018/12/13.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class RateFootViewController: UIViewController {
    
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var buttonview: UIView!
    @IBOutlet weak var slideUpbotton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var googlePlus: UIButton!
    @IBOutlet weak var instragram: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideShareButtons()
    }
    
    @IBAction func slideUpAndDown(_ sender: UIButton) {
        bottomViewAnimation()
    }
    @IBAction func panMenuCard(_ sender: UIPanGestureRecognizer) {
        
        let menuCard = sender.view!
        let point = sender.translation(in: menuCard)
        let xFromCenter = menuCard.center.x - view.center.x  // >0 :right
        let moveRatio = xFromCenter / (view.center.x)
        // move the card
        menuCard.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        // rotate the card and make it smaller when reached 100
        let scale = min(100/abs(xFromCenter), 1)
        menuCard.transform = CGAffineTransform(rotationAngle: radians(35) * moveRatio).scaledBy(x: scale, y: scale)
        if xFromCenter > 0 {
            thumbImageView.image = UIImage(named: "thumbs_up")
            thumbImageView.tintColor = UIColor.green
        } else {
            thumbImageView.image = UIImage(named: "thumbs_down")
            thumbImageView.tintColor = UIColor.red
        }
        // change the alpha of thumbs image
        thumbImageView.alpha  = abs(moveRatio)
        if sender.state == UIGestureRecognizer.State.ended {
            // reach certain margin, go off the screen automatically
            if menuCard.center.x < 75 {
                // move off to the left side
                UIView.animate(withDuration: 0.3, animations: {
                    menuCard.center = CGPoint(x: menuCard.center.x - 200, y: menuCard.center.y + 75)
                    menuCard.alpha = 0
                })
                return
            } else if menuCard.center.x > (view.frame.width - 75) {
                // move off to the right side
                UIView.animate(withDuration: 0.3, animations: {
                    menuCard.center = CGPoint(x: menuCard.center.x + 200, y: menuCard.center.y + 75)
                    menuCard.alpha = 0
                })
                return
            }
            
            // card reset here, to get rid of this the code above need return 
            UIView.animate(withDuration: 0.2, animations: {
                menuCard.center = self.view.center
                self.thumbImageView.alpha = 0
            })
            resetCard()
           
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        self.resetCard()
    }
    
    func resetCard() {
        UIView.animate(withDuration: 0.2, animations: {
            self.menuView.center = self.view.center
            self.thumbImageView.alpha = 0
            self.menuView.alpha = 1
            self.menuView.transform = CGAffineTransform.identity
            
        })
    }
    
    
    
}




