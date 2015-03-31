//
//  StartViewController.swift
//  Photog
//
//  Created by Lalo Gonzalez on 3/9/15.
//  Copyright (c) 2015 Lalo Gonzalez. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func didTapSignIn (sender: AnyObject)
    {
        var viewController = AuthViewController(nibName:"AuthViewController", bundle:nil)
        viewController.authMode = .SignIn 
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapSignUp (sender: AnyObject)
    {
        var viewController = AuthViewController(nibName:"AuthViewController", bundle:nil)
        viewController.authMode = .SignUp
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

}
