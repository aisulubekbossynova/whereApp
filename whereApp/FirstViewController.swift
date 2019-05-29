//
//  FirstViewController.swift
//  whereApp
//
//  Created by Macbook on 16.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
class FirstViewController: UIViewController {
    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var myindicator: UIActivityIndicatorView!
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var passwordfield: UITextField!
    @IBOutlet weak var emailfield: UITextField!
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var surnamefield: UITextField!
    private var dbRef: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        let colors = Colors()
        
        view.backgroundColor = UIColor.clear
        var backgroundLayer = colors.gl
        backgroundLayer?.frame = view.frame
        view.layer.insertSublayer(backgroundLayer!, at: 0)
        dbRef = Database.database().reference()
        dbRef = dbRef?.child("User")
        let current_user = Auth.auth().currentUser
        if current_user != nil{
            performSegue(withIdentifier: "mySegue1", sender: self)
        }
    }

    @IBAction func signuppressed(_ sender: UIButton) {
        myindicator.startAnimating()

        Auth.auth().createUser(withEmail: emailfield.text!, password: passwordfield.text!, completion: { (user, error) in
            self.myindicator.stopAnimating()

            if error == nil{
                user?.sendEmailVerification(completion: { (error) in
                    if error == nil{
                        self.messagelabel.text = "Check your email.We sent you a verification link"
                        self.messagelabel.textColor = UIColor.green
                        
                        
                    }
                })
                print("yohoooo")
                let user = User.init(self.namefield.text!, self.surnamefield.text!,self.emailfield.text!)
                self.dbRef?.childByAutoId().setValue(user.toJSONFormat())
                //self.performSegue(withIdentifier: "signInSegue", sender: self)
            }else{
                self.messagelabel.text = "Something is wrong!"
              
            }
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

