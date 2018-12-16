//
//  SignUpViewContoller.swift
//  Rating
//
//  Created by 10.12 on 2018/12/15.
//  Copyright © 2018 Rui. All rights reserved.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var goBackButton: UIButtonX!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var continueButton: RoundedWhiteButton!
    var activityView: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
    @IBAction func goBack(_ sender: UIButton) {
    }
    
    @objc func keyboaardWillAppear(notification: NSNotification) {
        
    }
    
    @objc func textFieldChanged(_ target: UITextField) {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameField:
            usernameField.resignFirstResponder()
            emailField.becomeFirstResponder()
            break
        case emailField:
            emailField.resignFirstResponder()
            passwordField.becomeFirstResponder()
            break
        case passwordField:
            handleSignUp()
            break
        default:
            break
        }
        return true
    }
    
    func setContinueButton(enable: Bool) {
        
    }
    
    @objc func handleSignUp() {
        
    }
    
}
