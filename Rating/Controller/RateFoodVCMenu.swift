//
//  RateFoodMenu.swift
//  Rating
//
//  Created by 10.12 on 2018/12/13.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

extension RateFootViewController {
    
    func hideShareButtons() {
        twitter.alpha = 0
        facebook.alpha = 0
        googlePlus.alpha = 0
        instragram.alpha = 0
    }
    
    func bottomViewAnimation() {
        if buttonview.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 1, animations: {
                self.buttonview.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.bottomView.transform = CGAffineTransform(translationX: 0, y: -67)
                self.slideUpbotton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) { (true) in
                self.toggleShareButton()
            }
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.buttonview.transform = CGAffineTransform.identity
                self.bottomView.transform = CGAffineTransform.identity
                self.slideUpbotton.transform = CGAffineTransform.identity
            }) { (true) in
                self.toggleShareButton()
            }
        }
    }
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * Double.pi / 180)
    }
    
    func toggleShareButton() {
        let alpha = CGFloat(facebook.alpha == 0 ? 1 : 0)
        twitter.alpha = alpha
        facebook.alpha = alpha
        googlePlus.alpha = alpha
        instragram.alpha = alpha
    }
    
    
    
}
