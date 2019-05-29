//
//  SecondViewController.swift
//  whereApp
//
//  Created by Macbook on 16.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class SecondViewController: UIViewController {
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var signinb: UIButton!
    @IBOutlet weak var passwordfield: UITextField!
    @IBOutlet weak var emailfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let colors = Colors()
        
        view.backgroundColor = UIColor.clear
        var backgroundLayer = colors.gl
        backgroundLayer?.frame = view.frame
        view.layer.insertSublayer(backgroundLayer!, at: 0)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func singinpressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailfield.text!, password: passwordfield.text!, completion: { (user, error) in
            if error == nil{
                if (user?.isEmailVerified)!{
                    self.performSegue(withIdentifier: "mySegue2", sender: self)
                }else{
                    self.message.textColor = UIColor.red
                    self.message.text = "Your email is not verified!"
                }
            }else{
                print(error as Any)
                self.message.text = "Error! User is not signed up."
            }
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

