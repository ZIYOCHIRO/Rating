//
//  ViewController.swift
//  Rating
//
//  Created by 10.12 on 2018/12/13.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageview: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var buttonView: UIViewX!
    
    @IBOutlet weak var findLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageview.alpha = 0
        titleLabel.alpha = 0
        detailLabel.alpha = 0
        findLabel.alpha = 0
        startButton.alpha = 0
        buttonView.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // chain animation
        UIView.animate(withDuration: 1, animations: {
            self.backgroundImageview.alpha = 0.8
        }) { (true) in
            // next animation
            UIView.animate(withDuration: 0.5, animations: {
                self.titleLabel.alpha = 1
            }, completion: { (true) in
                // next animation
                UIView.animate(withDuration: 0.5, animations: {
                    self.detailLabel.alpha = 1
                    }, completion: { (true) in
                        self.startButton.alpha = 1
                        self.buttonView.alpha = 1
                        self.findLabel.alpha = 1
                })
            })
        }
    }

    @IBAction func startRating(_ sender: UIButton) {
    }
    
}

