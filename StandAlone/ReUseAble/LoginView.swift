//
//  LoginView.swift
//  ShadyPinesRadio
//
//  Created by Sohel on 6/6/21.
//  Copyright © 2021 ASN GROUP LLC. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    @IBOutlet weak var BtnFb: UIButton!
    @IBOutlet weak var googleSignIn: UIButton!
    @IBOutlet weak var forgotAction: UIButton!
    @IBOutlet weak var resetView: UIView!
    @IBOutlet weak var signUPImg: UIImageView!
    @IBOutlet weak var resetBack: UIButton!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var checkBox: CheckBox!
    @IBOutlet weak var resetActionBtn: UIButton!
    @IBOutlet weak var resetEmail: UITextField!
    @IBOutlet weak var resetBg: UIImageView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailFld: AnimatedTextInput!
    @IBOutlet weak var firstName: AnimatedTextInput!
    @IBOutlet weak var emailSignUP: AnimatedTextInput!
    @IBOutlet weak var loginBg: UIImageView!
    @IBOutlet weak var signupBG: UIImageView!
    @IBOutlet weak var createAccount: UIButton!
    @IBOutlet weak var confirmPassword: AnimatedTextInput!
    @IBOutlet weak var passwordSignUP: AnimatedTextInput!
    @IBOutlet weak var lastName: AnimatedTextInput!
    @IBOutlet weak var passwordFld: AnimatedTextInput!
    
    @IBOutlet weak var signUpBack: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        loginBtn.layer.cornerRadius = 10
        loginBg.layer.cornerRadius = 10
        signupBG.layer.cornerRadius = 10
        signUpView.layer.cornerRadius = 10
        mainView.layer.cornerRadius = 10
        imgView.layer.cornerRadius = 10
        signUPImg.layer.cornerRadius = 10
        resetBg.layer.cornerRadius = 10
        resetView.layer.cornerRadius = 10
        BtnFb.layer.cornerRadius = 10
        googleSignIn.layer.cornerRadius = 10
        resetActionBtn.layer.cornerRadius = 10
        setupField()
    }
    
    func setupField() {
        self.passwordSignUP.type = .password(toggleable: true)
        self.passwordSignUP.style = AuthInputStyle()
        self.passwordSignUP.clearButtonMode  = .always
        
        self.confirmPassword.type = .password(toggleable: true)
        self.confirmPassword.style = AuthInputStyle()
        self.confirmPassword.clearButtonMode  = .always
        
        self.firstName.type = .standard
        self.firstName.style = AuthInputStyle()
        self.firstName.clearButtonMode  = .always
        
        self.lastName.type = .standard
        self.lastName.style = AuthInputStyle()
        self.lastName.clearButtonMode  = .always
        
        self.emailSignUP.type = .email
        self.emailSignUP.style = AuthInputStyle()
        self.emailSignUP.clearButtonMode  = .always
        
        self.emailFld.type = .email
        self.emailFld.style = AuthInputStyle()
        self.emailFld.clearButtonMode  = .always
        
        self.passwordFld.type = .password(toggleable: true)
        self.passwordFld.style = AuthInputStyle()
        self.passwordFld.clearButtonMode  = .always
    }
}
