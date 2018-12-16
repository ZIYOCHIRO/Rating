//
//  UserViewController.swift
//  Rating
//
//  Created by 10.12 on 2018/12/14.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var addButtonView: UIViewX!
    @IBOutlet weak var bottomView: UIViewX!
    @IBOutlet weak var camera: UIButtonX!
    @IBOutlet weak var image: UIButtonX!
    @IBOutlet weak var addbutton: UIButtonX!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        camera.alpha = 0
        image.alpha = 0
    }
    
    @IBAction func addUserFood(_ sender: Any) {
        if addButtonView.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 0.5, animations: {
                self.addButtonView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.addbutton.transform = CGAffineTransform(rotationAngle: self.radians(45))
            }) { (true) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.toggleImageButton()
                })
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.addButtonView.transform = CGAffineTransform.identity
                self.addbutton.transform = CGAffineTransform.identity
                self.toggleImageButton()
            }) { (true) in
                
            }
        }
    }
    
    @IBAction func pickImageFromLibrary(_ sender: UIButton) {
    }
    
    @IBAction func takeAPhoto(_ sender: Any) {
    }
    
    

    
    
    
}
