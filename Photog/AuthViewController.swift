//
//  AuthViewController.swift
//  Photog
//
//  Created by Lalo Gonzalez on 3/24/15.
//  Copyright (c) 2015 Lalo Gonzalez. All rights reserved.
//

import UIKit

enum AuthMode
{
    case SignIn
    case SignUp

}

// this class is a SUPER CLASS for Navigation

class AuthViewController: UIViewController, UITextFieldDelegate {
    
    var authMode: AuthMode = AuthMode.SignUp
    
    @IBOutlet var emailTextField : UITextField?
    @IBOutlet var passwordTextField : UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // put the view down the navigation bar after including navbar
        
        self.edgesForExtendedLayout = UIRectEdge.None
        
        var emailImageView = UIImageView(frame: CGRectMake(0, 0, 50, self.emailTextField!.frame.size.height))
        emailImageView.image = UIImage(named: "EmailIcon")
        emailImageView.contentMode = .Center
        
        self.emailTextField?.leftView = emailImageView
        self.emailTextField?.leftViewMode = .Always
        
        
        var passwordImageView = UIImageView(frame: CGRectMake(0, 0, 50, self.passwordTextField!.frame.size.height))
        passwordImageView.image = UIImage(named: "PasswordIcon")
        passwordImageView.contentMode = .Center
        
        self.passwordTextField?.leftView = passwordImageView
        self.passwordTextField?.leftViewMode = .Always
        

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    override func viewDidAppear(animated: Bool) {
    
        super.viewDidAppear(animated)
        self.emailTextField?.becomeFirstResponder()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(true , animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        if(textField == self.emailTextField)
        {
            self.emailTextField?.resignFirstResponder()
            self.passwordTextField?.becomeFirstResponder()
        }
        else if (textField == self.passwordTextField)
        {
            self.passwordTextField?.resignFirstResponder()
            self.authenticate()
            
        }
        return true
    }
    
    func authenticate()
    {
        var email = self.emailTextField?.text
        var password = self.passwordTextField?.text
        
        if (email?.isEmpty == true || password?.isEmpty == true || email?.isEmailAdress() == false )
        {
            //alert the user

            self.showAlert("uh oh!", message:"Please check your email address and password")
            return
        }
        
        if authMode == .SignIn
        {
            self.SignIn(email!, password:password!)
        }
        else
        {
            self.SignUp(email!, password:password!)
        }
        //otherwise authenticate
    }
    
    func SignIn(email: String, password:String)
    {
        println("sign in")
    }
    
    func SignUp(email: String, password:String)
    {
        println("sign up")
    }
    



}
