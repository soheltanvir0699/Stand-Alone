//
//  PasswordChangeView.swift
//  ShadyPinesRadio
//
//  Created by Sohel Rana on 28/7/21.
//  Copyright © 2021 ASN GROUP LLC. All rights reserved.
//

import Foundation
import UIKit

class PasswordChangeView: UIView {
    
    @IBOutlet weak var dissmissBtn: UIButton!
    @IBOutlet weak var changeBtn: UIButton!
    @IBOutlet weak var changePassView: UIView!
    @IBOutlet weak var new_password: AnimatedTextInput!
    @IBOutlet weak var currentPass: AnimatedTextInput!
    override func awakeFromNib() {
        super.awakeFromNib()
        changePassView.layer.cornerRadius = 10
        changeBtn.layer.cornerRadius = 10
        setupField()
    }
    
    func setupField() {
    self.currentPass.type = .password(toggleable: true)
    self.currentPass.style = AuthInputStyle2()
        self.currentPass.clearButtonMode  = .always
        self.new_password.type = .password(toggleable: true)
        self.new_password.style = AuthInputStyle2()
            self.new_password.clearButtonMode  = .always
    }
}
struct AuthInputStyle: AnimatedTextInputStyle {
    let placeholderInactiveColor = UIColor.white
    let activeColor =  UIColor.white
    let inactiveColor = UIColor.hexStringToUIColor(hex: "4A4A4A")
    let lineInactiveColor = UIColor.hexStringToUIColor(hex: "EDF0F2")
    let lineActiveColor = UIColor.hexStringToUIColor(hex: "EDF0F2")
    let lineHeight: CGFloat = 1
    let errorColor = UIColor.red
    let textInputFont = UIFont.init(name: "Helvetica Neue", size: 16)!
    let textInputFontColor = UIColor.white
    let placeholderMinFontSize: CGFloat = 10
    let counterLabelFont: UIFont? = UIFont.init(name: "CircularStd-Book", size: 9.0)
    let leftMargin: CGFloat = 10
    let topMargin: CGFloat = 20
    let rightMargin: CGFloat = 10
    let bottomMargin: CGFloat = 10
    let yHintPositionOffset: CGFloat = -5
    let yPlaceholderPositionOffset: CGFloat = -5
    public let textAttributes: [String: Any]? = nil
}
struct AuthInputStyle2: AnimatedTextInputStyle {
    let placeholderInactiveColor = UIColor.black
    let activeColor =  UIColor.black
    let inactiveColor = UIColor.hexStringToUIColor(hex: "4A4A4A")
    let lineInactiveColor = UIColor.hexStringToUIColor(hex: "EDF0F2")
    let lineActiveColor = UIColor.hexStringToUIColor(hex: "EDF0F2")
    let lineHeight: CGFloat = 1
    let errorColor = UIColor.red
    let textInputFont = UIFont.init(name: "Helvetica Neue", size: 16)!
    let textInputFontColor = UIColor.black
    let placeholderMinFontSize: CGFloat = 10
    let counterLabelFont: UIFont? = UIFont.init(name: "CircularStd-Book", size: 9.0)
    let leftMargin: CGFloat = 10
    let topMargin: CGFloat = 20
    let rightMargin: CGFloat = 10
    let bottomMargin: CGFloat = 10
    let yHintPositionOffset: CGFloat = -5
    let yPlaceholderPositionOffset: CGFloat = -5
    public let textAttributes: [String: Any]? = nil
}
