//
//  ViewController.swift
//  C2CFloatingCustomLibrary
//
//  Created by Satyam Kumar on 12/20/2024.
//  Copyright (c) 2024 Satyam Kumar. All rights reserved.
//

import UIKit
import C2CFloatingLabelLibrary
class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField:C2CSdkFloatingLabelTextFieldView!
    @IBOutlet weak var passwordTextBordleLineField:C2CSdkFloatingLabelBorderLine!
    @IBOutlet weak var messageView:C2CFloatingLabelTextView!
    @IBOutlet weak var image:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Action On Left Side Btn
        // mycustomeView.leftIconImageBtn.addTapGestureRecognizer(action: {
        //         print("image tapped")
        //  })
        //MARK: - Action On Right Side Btn
        passwordTextBordleLineField.rightIconImageBtn.addTapGestureRecognizer(action: {
            print("ImageView tapped!")
            if self.passwordTextBordleLineField.rightIconImageBtn.currentImage == UIImage(named: "showPass"){
                self.passwordTextBordleLineField.rightIconImageBtn.setImage(UIImage(named: "hiddenPasspng"), for: .normal)
                self.passwordTextBordleLineField.textField.isSecureTextEntry = true
            }else{
                self.passwordTextBordleLineField.rightIconImageBtn.setImage(UIImage(named: "showPass"), for: .normal)
                self.passwordTextBordleLineField.textField.isSecureTextEntry = false
            }
        })
        setUpDesign()
        
    }
    
    func setUpDesign(){
        setUpMycustomeView()
        C2CSdkFloatingLabelBorderLine()
        C2CFloatingLabelTextView()
    }
    
    //C2CSdkFloatingLabelTextFieldView
    func setUpMycustomeView(){
        emailTextField.PlaceHolder = "Email Id*"
        emailTextField.TextColor = .label
        emailTextField.RequiredColor = .red
        emailTextField.BColorHeight = 1.0
        emailTextField.CornerRadiues = 20
        emailTextField.ShowStrokeColor = .label
        emailTextField.HideStrokeColor = .lightGray
        emailTextField.TextFontStyle = "Palatino Bold"
        emailTextField.TextFontSize = 17
        emailTextField.height = 50
        emailTextField.textField.keyboardType = .emailAddress
        emailTextField.leftSideImage = UIImage(named: "email")
        emailTextField.SetErrorMessage = true
        emailTextField.ErrorMessage = "Please enter the email id"
    }
    
    //C2CSdkFloatingLabelBorderLine
    func C2CSdkFloatingLabelBorderLine(){
        passwordTextBordleLineField.PlaceHolder = "Password*"
        passwordTextBordleLineField.TextColor = .label
        passwordTextBordleLineField.RequiredColor = .red
        passwordTextBordleLineField.borderLineColor = .label
        passwordTextBordleLineField.TextFontStyle = "Palatino Bold"
        passwordTextBordleLineField.TextFontSize = 17
        passwordTextBordleLineField.textField.keyboardType = .default
        passwordTextBordleLineField.textField.isSecureTextEntry = true
        passwordTextBordleLineField.RightSideImage = UIImage(named: "hiddenPasspng")
        passwordTextBordleLineField.LeftSideImage = UIImage(named: "password")
        passwordTextBordleLineField.Height = 60
        passwordTextBordleLineField.SetErrorMessage = true
        passwordTextBordleLineField.ErrorMessage = "Please enter the password"
    }
    
    //C2CFloatingLabelTextView
    func C2CFloatingLabelTextView(){
        messageView.PlaceHolder = "Enter the message*"
        messageView.TextColor = .label
        messageView.RequiredColor = .red
        messageView.BColorHeight = 1.0
        messageView.CornerRadiues = 20
        messageView.ShowStrokeColor = .label
        messageView.HideStrokeColor = .lightGray
        messageView.TextFontStyle = "Palatino Bold"
        messageView.TextFontSize = 17
        messageView.textField.keyboardType = .default
        messageView.SetErrorMessage = true
        messageView.ErrorMessage = "Please enter the message"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionOnContinueBtn(_ sender:UIButton){
        if emailTextField.textField.text! == ""{
            emailTextField.errorMessageLbl.isHidden = false
        }else if passwordTextBordleLineField.textField.text! == ""{
            passwordTextBordleLineField.errorMessageLbl.isHidden = false
        }else if messageView.textField.text == ""{
            messageView.errorMessageLbl.isHidden = false
        }
        
        print("messageView.textField.text",messageView.textField.text!)
    }
    
}

